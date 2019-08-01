FROM ubuntu:latest
RUN apt update && apt install nginx -y
copy . /var/www/html/
# Expose ports.
EXPOSE 80
RUN service nginx start
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
