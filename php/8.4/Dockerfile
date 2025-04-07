FROM php:8.4-apache

RUN apt-get update && apt-get install -y msmtp

# Add sendmail wrapper to ensure PHP mail() works
COPY sendmail-wrapper.sh /usr/sbin/sendmail
RUN chmod +x /usr/sbin/sendmail

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY ../php.ini /usr/local/etc/php/

# Create MSMTP config for Mailhog
RUN echo "defaults" > /etc/msmtprc \
 && echo "auth off" >> /etc/msmtprc \
 && echo "tls off" >> /etc/msmtprc \
 && echo "logfile /var/log/msmtp.log" >> /etc/msmtprc \
 && echo "account default" >> /etc/msmtprc \
 && echo "host mailhog" >> /etc/msmtprc \
 && echo "port 1025" >> /etc/msmtprc \
 && echo "from kevin@815media.com" >> /etc/msmtprc
