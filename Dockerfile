FROM php:8.2-apache

# 1. Install ekstensi PostgreSQL yang dibutuhkan
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# 2. Ubah port Apache bawaan (80) menjadi 8080 agar sesuai dengan Railway
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# 3. Copy seluruh kode aplikasi ke direktori web Apache
COPY . /var/www/html/

# 4. Informasikan port 8080 ke Railway
EXPOSE 8080
