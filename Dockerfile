# Gunakan image dasar dari PHP 8 + Apache
FROM php:8.2-apache

# Aktifkan mod_rewrite Apache (opsional tapi sering dibutuhkan)
RUN a2enmod rewrite

# Salin file PHP ke direktori web Apache
COPY ./public/ /var/www/html/

# Ubah permission jika diperlukan
RUN chown -R www-data:www-data /var/www/html

# Install ekstensi PHP tambahan jika dibutuhkan
# RUN docker-php-ext-install mysqli pdo pdo_mysql
