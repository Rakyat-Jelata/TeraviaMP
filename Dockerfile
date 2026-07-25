FROM php:8.2-apache

# 1. Matikan event/worker MPM jika aktif, lalu pastikan mpm_prefork yang berjalan
RUN a2dismod mpm_event mpm_worker || true \
    && a2enmod mpm_prefork

# 2. Install ekstensi PostgreSQL yang dibutuhkan
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# 3. Ubah port Apache dari 80 ke 8080 agar sesuai standar Railway
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# 4. Copy seluruh kode aplikasi
COPY . /var/www/html/

# 5. Expose port 8080
EXPOSE 8080
