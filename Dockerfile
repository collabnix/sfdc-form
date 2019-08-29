FROM php:7.2-apache
RUN apt update
RUN apt install -y git
COPY . /var/www/html/
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
