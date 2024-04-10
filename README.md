# Linux Tweet App

This is a simple NGINX website that allows a user to send a tweet.

You need to build and run the container using below commands:

Build it:
`docker build -t linux_tweet_app .`

Run it:
`docker run -d -p 80:80 linux_tweet_app`

After the container is up and running, access the app using the "server_ip:80" on the web browser.

The page contains some sample content and a button to redirect you to the "Twitter" website. 
