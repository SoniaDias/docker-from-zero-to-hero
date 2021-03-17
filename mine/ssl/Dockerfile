FROM php:7.1-apache
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev
COPY server.crt /etc/apache2/ssl/server.crt
COPY server.key /etc/apache2/ssl/server.key
COPY localhost.conf /etc/apache2/sites-enabled/localhost.conf
RUN docker-php-ext-install mysqli pdo pdo_mysql zip mbstring
RUN a2enmod rewrite
RUN a2enmod ssl
RUN service apache2 restart

#https://medium.com/@nh3500/how-to-create-self-assigned-ssl-for-local-docker-based-lamp-dev-environment-on-macos-sierra-ab606a27ba8a
#docker run -p 80:80 -p 443:443 68b57f0b6302 apache2-foreground

#FROM centos
#
##httpd to install apache
#RUN \
#    yum -y install \
#    httpd \
#    php \
#    php-mysqlnd \
#    mod_ssl \
#    openssl
#
#COPY /html-ssl /var/www/html/
#
#RUN echo "<?php phpinfo(); ?>" > /var/www/html/test.php
#
#COPY server.crt /etc/apache2/ssl/server.crt
#COPY server.key /etc/apache2/ssl/server.key
#
#COPY localhost.conf /etc/apache2/sites-enabled/localhost.conf
#
##RUN a2enmod rewrite
##RUN a2enmod ssl
##RUN service apache2 restart
#
#CMD apachectl -DFOREGROUND
#
#
#
##docker build -t apache_ssl:v3 .
##docker run -d -p 811:80 bcda9a56fce0
##browser, http://localhost:811/dist/