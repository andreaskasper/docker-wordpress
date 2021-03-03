FROM wordpress:apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

RUN a2enmod headers

EXPOSE 80
