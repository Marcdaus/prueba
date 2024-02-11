FROM php:apache

RUN apt-get update
RUN apt-get install -y default-mysql-client
RUN docker-php-ext-install mysqli pdo_mysql

RUN service apache2 restart
