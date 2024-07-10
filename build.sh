#!/bin/bash

sudo yum update
docker build -t linux_tweet_app /home/ec2-user/linux_tweet_app/.