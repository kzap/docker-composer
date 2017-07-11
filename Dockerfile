FROM composer:latest
MAINTAINER Andre Marcelo-Tanner <andre@enthropia.com>

# Install specific packages
RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories; \
	echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories; \
    apk add --update \
		libbz2 \
		php7-bz2@community \
	; \
	cp /usr/lib/php7/modules/bz2.so /usr/local/lib/php/extensions/no-debug-non-zts-20160303/; \
	cp /etc/php7/conf.d/00_bz2.ini ${PHP_INI_DIR}/conf.d/

CMD ["install", "--ignore-platform-reqs"]