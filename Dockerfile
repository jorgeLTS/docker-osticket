FROM jorgelts/ubuntu:20.04
LABEL maintainer="Jorge Mendoza (github.com/jorgelts)"

### Default Runtime Environment Variables
ENV CONTAINER_NAME=osticket-app

### Dependency Installation
RUN set -x && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
                  dialog \
                  apt-utils \
                  git \
                  zip \
                  unzip \
                  openssl \
                  tar \
                  wget \
                  zlib1g \
                  apache2 \
                  software-properties-common

RUN add-apt-repository -y ppa:ondrej/php

RUN apt-get install -y \
                  php7.3 \
                  php7.3-gd \
                  php7.3-imap \
                  php7.3-intl \
                  php7.3-apcu \
                  php7.3-cli \
                  php7.3-mbstring \
                  php7.3-curl \
                  php7.3-mysql \
                  php7.3-json \
                  php7.3-xml

EXPOSE 80

ADD install /

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
