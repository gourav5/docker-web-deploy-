FROM web_api_nginx:latest
LABEL maintainer="Your Name gouravgaur270@gmail.com"
LABEL description="This is a simple Dockerfile example that uses the LABEL and EXPOSE instructions."
RUN apt-get update
RUN apt-get install -y vim
COPY web.conf /etc/nginx/conf.d/
COPY run-tests-script.sh /usr/bin/
COPY . /var/www/html/
RUN chmod +x /usr/bin/run-tests-script.sh
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
