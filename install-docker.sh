#!/bin/bash

# Install docker on Amazon Linux 2023 EC2

sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine

sudo yum update -y

sudo yum install -y docker

sudo service docker start

sudo usermod -aG docker ec2-user

newgrp docker
