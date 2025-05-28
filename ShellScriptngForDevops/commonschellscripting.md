what kind of schell script you write in day-to-day activities or why do you use schell in your current organization

lets write a schell script it will connect to do AWS it will list the active resources of services name of the schell scripting 
aws_resources_list.sh <region> <services> we will use two arguments for it will list all the active services in the region.

Cost optimization so important for companies

First task is to identify which services using by the your organization 

when ever you write a schell script Make SURE yOU perform the validation for first step 
1-Validation ==> you will take input from user you will use this inout from the user. These is called command line argument  we will read variables and we will use this variables in the script 


S3 -- Resource arama komutu
aws s3api list-buckets --query "Buckets[*].Name" --output table

EC2 -- Resource arama komutu
aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType,PublicIpAddress]" --output table

VPC -- Resource arama komutu
aws ec2 describe-vpcs --query "Vpcs[*].[VpcId,CidrBlock,IsDefault]" --output table

Subnet -- Resource arama komutu
aws ec2 describe-subnets --query "Subnets[*].[SubnetId,CidrBlock,AvailabilityZone]" --output table

Route Tables -- Resource arama komutu
aws ec2 describe-route-tables --query "RouteTables[*].[RouteTableId,VpcId]" --output table

Internet Gateway -- Resource arama komutu
aws ec2 describe-internet-gateways --query "InternetGateways[*].[InternetGatewayId,Attachments[*].VpcId]" --output table

NAT Gateway -- Resource arama komutu
aws ec2 describe-nat-gateways --query "NatGateways[*].[NatGatewayId,SubnetId,State]" --output table

Security Groups -- Resource arama komutu
aws ec2 describe-security-groups --query "SecurityGroups[*].[GroupId,GroupName,Description]" --output table

Key Pairs -- Resource arama komutu
aws ec2 describe-key-pairs --query "KeyPairs[*].[KeyName,KeyPairId]" --output table

Elastic IP -- Resource arama komutu
aws ec2 describe-addresses --query "Addresses[*].[PublicIp,AllocationId,InstanceId]" --output table

EBS -- Resource arama komutu
aws ec2 describe-volumes --query "Volumes[*].[VolumeId,Size,State,AvailabilityZone]" --output table

EFS -- Resource arama komutu
aws efs describe-file-systems --query "FileSystems[*].[FileSystemId,CreationTime,LifeCycleState]" --output table

RDS -- Resource arama komutu
aws rds describe-db-instances --query "DBInstances[*].[DBInstanceIdentifier,Engine,DBInstanceClass,DBInstanceStatus]" --output table

DynamoDB -- Resource arama komutu
aws dynamodb list-tables --output table

Lambda -- Resource arama komutu
aws lambda list-functions --query "Functions[*].[FunctionName,Runtime,LastModified]" --output table

API Gateway -- Resource arama komutu
aws apigateway get-rest-apis --query "items[*].[id,name,createdDate]" --output table

CloudWatch Logs -- Resource arama komutu
aws logs describe-log-groups --query "logGroups[*].[logGroupName,creationTime]" --output table

IAM Users -- Resource arama komutu
aws iam list-users --query "Users[*].[UserName,CreateDate]" --output table

IAM Roles -- Resource arama komutu
aws iam list-roles --query "Roles[*].[RoleName,CreateDate]" --output table

EKS -- Resource arama komutu
aws eks list-clusters --output table

SQS -- Resource arama komutu
aws sqs list-queues --output table

SNS -- Resource arama komutu
aws sns list-topics --query "Topics[*].TopicArn" --output table

CloudFormation -- Resource arama komutu
aws cloudformation list-stacks --query "StackSummaries[*].[StackName,StackStatus]" --output table


for entiring aws EC2 vmachine from your local go to downloads and 
write this ssh -i <nameofthepem>.pem ubuntu@<public_ip_EC2>

and you need to upload AWS CLI to your EC2 instances 
first you will update the 
Go AWS CLI and find user guide and follow the steps you can use which machine you use you can choose how to install aws cli to on it 
1- sudo apt update
2- AWS CLi install 
3- AWS configure 
4- ./aws_resouerces_listing.sh east-1 ec2


IS THE NEXT STAGE is just put this AWS CLI in a CRONJOB you can take that as a assignment how will you write a cron job and put this in the Cronjob just make it execute every day at 9 pm 

CHMOD 771 me and my group can write read and execute but users can just execute 