FROM php:7.4-alpine

RUN apk update && apk add mysql-client freetype-dev libjpeg-turbo-dev libpng-dev libpng-dev tini less && rm -f /var/cache/apk/*

RUN docker-php-ext-install mysqli
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && docker-php-ext-install -j$(nproc) gd


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