FROM wordpress:apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

# Install Postfix
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y postfix && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy entry script
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh

ENTRYPOINT ["/entry.sh"]
CMD ["apache2-foreground"]

RUN a2enmod headers

EXPOSE 80
