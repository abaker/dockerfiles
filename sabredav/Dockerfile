FROM ubuntu:18.04

WORKDIR /var/www/html

RUN \
  export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get install -y apache2 curl git sqlite3 php libapache2-mod-php unzip \
  php-date php-dom php-mbstring php-sqlite3 && \
  a2enmod rewrite && \
  curl -sS https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer && \
  composer require sabre/dav ~4.0.2

COPY server.php .
COPY vhost /etc/apache2/sites-enabled/000-default.conf

CMD apachectl -D FOREGROUND
