FROM php:7.2-alpine

RUN docker-php-ext-install mysqli

RUN apk update && apk add mysql-client tini less && rm -f /var/cache/apk/*

ARG WPCLI_VERSION
ENV WPCLI_VERSION ${WPCLI_VERSION}

RUN curl --silent --fail --location --retry 3 --output /tmp/wp-cli.phar \
         --url https://github.com/wp-cli/wp-cli/releases/download/v${WPCLI_VERSION}/wp-cli-${WPCLI_VERSION}.phar; \
    chmod +x /tmp/wp-cli.phar; \
    mv /tmp/wp-cli.phar /bin/wp


WORKDIR /app
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
CMD ["help"]