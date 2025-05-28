#!/bin/bash

##########################################################
# This script will list all the resources in the AWS account 
# Author : Turgay, you need to provide author information.
# Version : v0.0.0.1
# Following are the supported AWS services by the script
#EC2
#S3
#DynamoDB
#Lambda
#Lambda
#FSX
#EBS
#EKS
#ECS

# We should also explain how to use these script in here
# Usage: ./aws_resources_listing.sh <region> <service_name>
##########################################################

# Check if the required number of arguments are passed 

### there are some specific things in schell scripting when you write $# that will get command line arguments number we are verifying 
### if the command line arguments are equal, two or not 

if [ $# -ne 2 ]; then
    echo "Usage: ./aws_resource_list.sh  <aws_region> <aws_service>"
    echo "Example: ./aws_resource_list.sh us-east-1 ec2"
    exit 1
fi

### schell script should talk to the AWS API Every service has their own API , But you cannot do this for every service because
### you always need to write CURL command for it. instead there is something callled AWS CLI 
### we can talk to the AWS CLI initially then AWS CLI will talk to the AWS Account 

# Assign the arguments to variables and convert the service to lowercase
aws_region=$1
aws_service=$2

# Check if the AWS CLI is installed or not
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install the AWS CLI and try again."
    exit 1
fi

# Check if the AWS CLI is configured
### -d= directory ! = negative if this directory is not exist then just print AWS CLI is not configured 
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure the AWS CLI and try again."
    exit 1
fi

###This is the main part of my script if user inputs EC2 then you need to execute a particular AWS CLI command 
### which is AWS ec2 describe _------- something 
### S3 => we need to express aws s3api ls 
### we can use switch case for it s lest costl operation 

##you can search AWS Command Line Interface Documentation ==> Command Reference ==>

case $aws_service in
    ec2)
        echo "Listing EC2 Instances in $aws_region"
        aws ec2 describe-instances --region $aws_region
        ;;
    rds)
        echo "Listing RDS Instances in $aws_region"
        aws rds describe-db-instances --region $aws_region
        ;;
    s3)
        echo "Listing S3 Buckets in $aws_region"
        aws s3api list-buckets --region $aws_region
        ;;
    cloudfront)
        echo "Listing CloudFront Distributions in $aws_region"
        aws cloudfront list-distributions --region $aws_region
        ;;
    vpc)
        echo "Listing VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
        ;;
    iam)
        echo "Listing IAM Users in $aws_region"
        aws iam list-users --region $aws_region
        ;;
    route5)
        echo "Listing Route53 Hosted Zones in $aws_region"
        aws route53 list-hosted-zones --region $aws_region
        ;;
    rds)
        echo "This is Listing the RDS when its ready $aws_region"
        aws rds describe db_intances --region $aws_region
        ;;
    whytl)
        echo "this is finding to errors between lots of application"
        aws whtyl describe wyhtl_ins --region $aws_region
        ;;
    cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region"
        aws cloudwatch describe-alarms --region $aws_region
        ;;
    cloudformation)
        echo "Listing CloudFormation Stacks in $aws_region"
        aws cloudformation describe-stacks --region $aws_region
        ;;
    lambda)
        echo "Listing Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;
    sns)
        echo "Listing SNS Topics in $aws_region"
        aws sns list-topics --region $aws_region
        ;;
    sqs)
        echo "Listing SQS Queues in $aws_region"
        aws sqs list-queues --region $aws_region
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $aws_region"
        aws dynamodb list-tables --region $aws_region
        ;;
    ebs)
        echo "Listing EBS Volumes in $aws_region"
        aws ec2 describe-volumes --region $aws_region
        ;;
    *)
        echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac

