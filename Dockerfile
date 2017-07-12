FROM composer:latest
MAINTAINER Andre Marcelo-Tanner <andre@enthropia.com>

# Install PHP Extension: bz2
RUN apk add --update \
		bzip2-dev \
    && docker-php-ext-install bz2 \
    && apk del \
    	bzip2-dev \
    && rm -rf /tmp/* /var/cache/apk/*

CMD ["install", "--ignore-platform-reqs"]