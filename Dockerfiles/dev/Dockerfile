FROM php:8-apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

RUN apt-get update \
    && apt-get install -y wget unzip mariadb-server \
    && wget https://wordpress.org/latest.zip -O /var/www/html/wordpress.zip \
    && unzip /var/www/html/wordpress.zip \
    && rm -f /var/www/html/wordpress.zip \
    && mv /var/www/html/wordpress/* /var/www/html/ \
    && apt-get clean

EXPOSE 80
EXPOSE 3306


