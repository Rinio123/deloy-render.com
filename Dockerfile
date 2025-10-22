# Chọn image PHP có sẵn Apache
FROM php:8.2-apache

# Cài các extension và công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip \
    && a2enmod rewrite

# Thiết lập thư mục làm việc
WORKDIR /var/www/html

# Copy toàn bộ code Laravel vào container
COPY . /var/www/html

# Cài Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Cài các gói Laravel (không cài dev, tối ưu autoloader)
RUN composer install --no-dev --optimize-autoloader

# Phân quyền cho storage & bootstrap/cache
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Cấu hình VirtualHost để Laravel routes hoạt động
RUN echo "<VirtualHost *:80>
    DocumentRoot /var/www/html/public
    <Directory /var/www/html/public>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>" > /etc/apache2/sites-available/000-default.conf

# Mở cổng 80
EXPOSE 80

# Chạy Apache khi container khởi động
CMD ["apache2-foreground"]
