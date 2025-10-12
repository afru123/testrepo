#!/bin/bash

###########################
### Author: Afrasiab Khan
### Date : October 11, 2025

### Veresion: V1

### This script will track the AWS resources

###########################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker  # This reource tracker after the command is used to create a file after execution of the command.

# List EC2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker   # here we used jq which is called json parsor, while executing the command the output was too large, and we need only instance ID, so instance ID is available under lists of instances and reservations. Being a devops engineer we have to deal with JSON and YAML mostly, so jq and yq parsor can be used.

# List Lambda
echo "print list of lambda functions"
aws lambda list-functions > resourceTracker

# List IAM Users
echo "print list of IAM Users"
aws iam list-users > resourceTracker

