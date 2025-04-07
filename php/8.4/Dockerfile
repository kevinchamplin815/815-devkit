FROM php:8.4-apache

# Install common extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Optional: Copy custom php.ini if you create one
COPY ../php.ini /usr/local/etc/php/
