FROM nginx:latest

WORKDIR /app

COPY . .

ADD PNG /usr/share/nginx/html/PNG

COPY index.html /usr/share/nginx/html

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
