Why organizations moves to cloud,
    --first thing is MANAGEABILITY ==> that is you have to create your own data center, your own servers , keeping patching them whenever there is a security issue , you have to constantly update the server you should have system engineering team or dedicated team who completly takes care of these servers thisi problem one.

    --second thing is COST ==> when you moved to cloud if you are not using certain amount instances so you'll not be built for that whereas if you are buying your infrastructure and whether use it or not use it you have alread paid for it. But in cloud you can pay how much you used.

    as Devops engineer your primary task is make less cost for organization. You have track the resource usage. So there are multiple ways for doing this.

    there is organization and it used only EC2 so we will monitor the resource usage for these resource, Lets say they are also use S3, Lambda function IAM, 

    what is your everyday at 6 am , you have to give this report to your manager ? how will you give that information to manager you will write a schell script and using the schell script what will you do you will create a file and this file will have all of this resource usage okay so how many instances active , how many S3 there are, how many Lambda function there are, 

    there is one way every day you can run you schell script with manual way but you can be available at every day for this
    there is other way cronjob entires role. it automatically execute schell script for you and of the day we will create cron job and we will integrate schell script with cron job 
     

    but how we will get all this all information there are multiple ways for learning this but AWS CLI is the best way right!

    one of the pre request is the AWS install 

    1.AWS install
    2.AWS Configure 
    3.Connect to EC2 instance 
    4.Creating schell name : aws_resources_tracker.sh
      - vim aws_resources_tracker.sh (if you dont now AWS CLI Command dont worry you can google it with aws cli references)
        #!/bin/bash
        #################################
        #Author : Turgay
        #Date: 30.2.2021
        #Version: V1
        #This script will report AWS resources usage
        #################################


        set -x (it shows your schell script and put the output)

        ##AWS S3##
        #List S3 buckets
         echo "List of S3 Buckets"
         aws s3 ls
         aws s3 ls > resourcesTracher ==>you can put a file.
        
        ##AWS EC2##
        #List EC2 Instances
         echo "List of Ec2 Instances"
         aws ec2 describe_instances //it will give all list 
         aws ec2 describe_instances | jq '.Reservations[].Instances[].InstanceId' // Jq is a jason parser, it will give just IDs of instances 

        ##AWS Lambda##
        #List lambda functions
         echo "List of Lambda Functions"
         aws lambda list-functions

        ##AWS IAM##
        #List IAM Users
         echo "List of IAM Userss"
         aws iam list-users