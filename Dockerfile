FROM ubuntu:latest
RUN apt update && apt install nginx -y
ADD /go/ /var/www/html/
# Expose ports.
EXPOSE 80
RUN service nginx start
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
