#!/bin/bash

####################
# Author : Sudhakar S
# date   : 18-08-2023
# version : v01

# Description : This script will report the aws resource usage 
# aws s3
# aws ec2
# aws lambda
# aws IAM USER

set -x # debug mode

# list the aws s3 bucket 
 echo "printing the S3 bucket"
aws s3 ls

# list the ec2 instance
echo "printing the ec2 describe-instance"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list aws lambda function 
echo "printing lambda functions list"
 aws lambda list-functions

# list IAM USERS
echo "printing iam users"
 aws iam list-users


