docker-composer
============

Runs `composer install --ignore-platform-reqs` within a docker container

FROM composer:latest which uses php:7-alpine so its footprint is minimal, added bzip2 so `Composer` can unarchive packages

You can run a specific command like so 

    $ docker run -it -v "`pwd`":/app kzap/composer require [package name]

