# Linux Tweet App

This is a simple NGINX website that allows a user to send a tweet.

## You need to build and run the container using below commands:

Build :

```
docker build -t linux_tweet_app .
```

Run :

```
docker run -d -p 80:80 linux_tweet_app
```

## Access the app

After the container is up and running, access the app using the `server_ip:80` on the web browser.

The page contains some sample content and a button to redirect you to the **Twitter** website.


Install git - https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

Install docker - https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-docker.html

Install CodeDeploy Agent - https://docs.aws.amazon.com/codedeploy/latest/userguide/codedeploy-agent-operations-install-cli.html

