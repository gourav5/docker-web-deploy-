FROM ubuntu:latest
LABEL maintainer="Your Name gouravgaur270@gmail.com"
LABEL description="This is a simple Dockerfile example that uses the LABEL and EXPOSE instructions."
RUN apt-get update && \
    apt-get install -y nginx
COPY . /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
