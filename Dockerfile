FROM php:latest

MAINTAINER Thomas Servuc

RUN apt-get update -y && apt-get install git unzip -y
