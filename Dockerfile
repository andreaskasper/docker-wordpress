FROM wordpress:apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

RUN a2enmod headers && a2enmod xsendfile

EXPOSE 80
