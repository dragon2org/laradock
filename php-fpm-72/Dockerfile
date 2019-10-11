FROM php:7.2-fpm

LABEL maintainer="sjje <sjje0x0@gmail.com>"
 
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

COPY ./tuna_sources.list /etc/apt/sources.list

RUN set -xe; \ 
        apt-get update && \
        pecl channel-update pecl.php.net && \
        apt-get install -yqq \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        apt-utils \
        vim \
        lsof \
        libzip-dev zip unzip && \
        docker-php-ext-configure zip --with-libzip && \
        # Install the zip extension
        docker-php-ext-install zip && \
        php -m | grep -q 'zip'

RUN pecl install -o -f redis \ 
    && docker-php-ext-enable redis \
    && php -m | grep -q 'redis' 

RUN docker-php-ext-install mysqli

RUN apt-get install -y zlib1g-dev libicu-dev g++ && \
    docker-php-ext-configure intl && \
    docker-php-ext-install intl 

RUN docker-php-ext-install bcmath

RUN docker-php-ext-install pdo_mysql

###########################################################################
# Opcache:
###########################################################################

ARG INSTALL_OPCACHE=false

RUN if [ ${INSTALL_OPCACHE} = true ]; then \
    docker-php-ext-install opcache \
;fi

# Copy opcache configration
COPY ./opcache.ini /usr/local/etc/php/conf.d/opcache.ini

###########################################################################
# Check PHP version:
###########################################################################

RUN set -xe; php -v | head -n 1 | grep -q "PHP"

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

COPY ./laravel.ini /usr/local/etc/php/conf.d
COPY ./xlaravel.pool.conf /usr/local/etc/php-fpm.d/
COPY ./log.conf /usr/local/etc/php-fpm.d/

RUN mkdir -p /var/log/php-fpm/

USER root

# Clean up
# RUN apt-get clean && \
#     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
#     rm /var/log/lastlog /var/log/faillog

RUN usermod -u 1000 www-data

WORKDIR /var/www

CMD ["php-fpm"]

EXPOSE 9000