FROM nginx:latest

COPY . .
COPY index.html /usr/share/nginx/html
# COPY ./PNG/linux.png /usr/share/nginx/html

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
