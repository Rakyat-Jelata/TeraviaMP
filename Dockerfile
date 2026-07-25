FROM php:8.2-apache

# Install library PostgreSQL yang dibutuhkan
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# Copy seluruh file proyek ke server web Apache
COPY . /var/www/html/

# Port default Railway
EXPOSE 80
