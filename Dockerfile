FROM gliderlabs/alpine:latest

MAINTAINER Dmitry Gavriloff <info@imega.ru>

RUN apk-install \
        php-phar \
        php-zlib \
        curl && \
    curl https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /usr/local/bin/phpcs.phar && \
    chmod +x /usr/local/bin/phpcs.phar && \
    ln -s /usr/local/bin/phpcs.phar /usr/local/bin/phpcs && \
    apk del curl

ENTRYPOINT ["phpcs"]
