#!/bin/sh

apk add php composer yarn
apk add php-ctype php-sqlite3 php-fpm php-pdo_sqlite php-gd php-fileinfo php-tokenizer php-simplexml

compoer update
composer install
yarn
