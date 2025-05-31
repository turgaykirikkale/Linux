this is a real world usecases ==>

1.observability set up. ==> for logging they are use ELK stack 

log stash was collecting logs from various sources and storing that elastic search , and it work brilliantly with them because they were to perform log analysis and it helped them in the incident management procesess whenever there is issue and incident they can go ELK and they can understand the issue and debugging or troubleshooting but their management had a concern with respect to ELK stack costing and we need to reduce the cost of it. 

whem you are looking for optimizing and reducing cost , ı thought taking a look what logs they are storing in the YK stack this is where ı started first looking at different logs 
they were storing 
    Application Logs (Microservices) => thats important.
    K8s plance control log 
    Infrastructure logs (Jenkins jenkins lots steps and every time if there is action Jenkins will create lots of logs.)
    Business

we will be focus jenkins environment for reducing the cost, it has lots of environment  UAT, staging, pre-prod, and prod 

Jenkins => Email, Slack if there is build failure it is send above the email and slack and they are storing in ELK Stack and they are not performing any log analysis , they are just storing the logs as like a backup just purpose of safety you can move them to S3 buckets ,

Delete Jenkins from ELK and connect them wth S3 buckets 
we will not use any extends plugins or any tool we will just write a schell scprittig this get triggered everyday night it goes to the Jenkins server it goes the directory where jenkins builds and they have 100 logs and read this logs files then upload them to the S3 buckets. And S3 will be storage to log files S3 Real time caring if you dont use your file for 3 months than it takes the files to Glacier or deep archieve where the costing is even less you can see 50 percent cost reduction

we need to AWS CLI for connecting with S3 

Jenkins is hosted on a EC2 instance we will install schell script on the EC2 instance for commnunicate the S3 buckets we need AWS cli on this machine 
1.İnstall AWS Cli =>from documentation 
2.then aws configure 
3.vim s3_upload.sh


#!/bin/bash

# Variables
JENKINS_HOME="/var/lib/jenkins"  # Replace with your Jenkins home directory
S3_BUCKET="s3://your-s3-bucket-name"  # Replace with your S3 bucket name
DATE=$(date +%Y-%m-%d)  # Today's date

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it to proceed."
    exit 1
fi

# Iterate through all job directories
for job_dir in "$JENKINS_HOME/jobs/"*/; do
    job_name=$(basename "$job_dir")
    
    # Iterate through build directories for the job
    for build_dir in "$job_dir/builds/"*/; do
        # Get build number and log file path
        build_number=$(basename "$build_dir")
        log_file="$build_dir/log"

        # Check if log file exists and was created today
        if [ -f "$log_file" ] && [ "$(date -r "$log_file" +%Y-%m-%d)" == "$DATE" ]; then
            # Upload log file to S3 with the build number as the filename
            aws s3 cp "$log_file" "$S3_BUCKET/$job_name-$build_number.log" --only-show-errors
            
            if [ $? -eq 0 ]; then
                echo "Uploaded: $job_name/$build_number to $S3_BUCKET/$job_name-$build_number.log"
            else
                echo "Failed to upload: $job_name/$build_number"
            fi
        fi
    done
done

