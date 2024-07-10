#!/bin/bash

sudo yum update                     # Update packages

sudo yum install ruby wget -y       # Install Pre-requisites

# To clean the AMI of any previous agent caching information
CODEDEPLOY_BIN="/opt/codedeploy-agent/bin/codedeploy-agent"
$CODEDEPLOY_BIN stop
sudo yum erase codedeploy-agent -y

mkdir /home/ec-user/codedeploy-agent
cd /home/ec-user/codedeploy-agent

# Download the CodeDeploy agent installer
# Look here to check the respective bucket-name, reg-id : https://docs.aws.amazon.com/codedeploy/latest/userguide/resource-kit.html#resource-kit-bucket-names
bucket_name="aws-codedeploy-us-east-1"
region_identifier="us-east-1"
version="1.7.0-92"
wget https://${bucket_name}.s3.${region_identifier}.amazonaws.com/latest/install

# Set execute permissions on the install file
chmod +x ./install

# To install a specific version of codedeploy-agent

# List the available versions in your region
# aws s3 ls s3://aws-codedeploy-${region_identifier}/releases/ --region ${region_identifier} | grep '\.rpm$'

# Install one of the versions - I have used latest verion i.e. 1.7.0-92
sudo ./install auto -v releases/codedeploy-agent-${version}.noarch.rpm


# To start the codedeploy-agent service
sudo systemctl start codedeploy-agent

# To check that the service is running
sudo systemctl status codedeploy-agent