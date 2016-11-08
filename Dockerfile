FROM php:latest

MAINTAINER Thomas Servuc

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install git unzip zlib1g-dev libicu-dev g++ libpq-dev libssl-dev -y

RUN pecl install mongodb-1.1.8 && docker-php-ext-enable mongodb
RUN echo extension=mongo.so > /usr/local/etc/php/conf.d/mongo.ini
