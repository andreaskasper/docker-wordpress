FROM wordpress:apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

ADD 000-default.conf /etc/apache2/sites-enabled/000-default.conf

RUN apt-get update \
    && apt-get install -y libapache2-mod-xsendfile \
    && a2enmod headers \
    && a2enmod xsendfile \
    && apt-get clean

EXPOSE 80
