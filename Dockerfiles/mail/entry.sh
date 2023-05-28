#!/bin/bash

# Set default domain from environment variable
POSTFIX_DOMAIN=${POSTFIX_DOMAIN:-example.com}

# Configure Postfix
echo "myhostname = ${POSTFIX_DOMAIN}" >> /etc/postfix/main.cf

# Start Postfix service
service postfix start

# Start regular entrypoint script
#exec "$@"
echo "docker-entrypoint.sh $@"
docker-entrypoint.sh $@