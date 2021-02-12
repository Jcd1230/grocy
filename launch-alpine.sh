#!/bin/sh

apk add git
apk add php composer yarn
apk add \
	php-ctype \
	php-sqlite3 \
	php-fpm \
	php-pdo_sqlite \
	php-gd \
	php-fileinfo \
	php-tokenizer \
	php-simplexml \
	php-exif \
	php-iconv \
	php-json \
	php-ldap \
	nginx

composer update
composer install
yarn

php-fpm7 &

nginx -g "daemon off;"
