#!/bin/bash

# Run docker image on deployment EC2

docker run -d -p 80:80 --name linux_tweet_app linux_tweet_app