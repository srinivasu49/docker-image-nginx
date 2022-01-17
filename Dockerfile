FROM ubuntu:latest
MAINTAINER srinivas <srinivasu.49@gmail.com>
RUN apt update && apt install -y iproute2 iputils-ping nginx
COPY index.html /usr/share/nginx/html
COPY index.html /var/www/html
EXPOSE 80
VOLUME /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
