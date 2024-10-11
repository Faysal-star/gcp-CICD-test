FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install nginx -y
RUN rm -rf /var/www/html/*
COPY frontend/index.html /var/www/html/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
