# Bước 1: Chọn image PHP có sẵn Apache
FROM php:8.2-apache

# Bật các module cần thiết của PHP
RUN docker-php-ext-install pdo pdo_mysql

# Kích hoạt mod_rewrite để Laravel hoạt động với route
RUN a2enmod rewrite

# Đặt thư mục làm việc mặc định
WORKDIR /var/www/html

# Copy toàn bộ code Laravel vào container
COPY . /var/www/html

# Cài Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Cài các gói Laravel cần thiết
RUN composer install --no-dev --optimize-autoloader

# Phân quyền storage & bootstrap
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Thiết lập quyền truy cập
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Thiết lập virtual host để hỗ trợ Laravel routes
RUN printf "<VirtualHost *:80>\n\
    DocumentRoot /var/www/html/public\n\
    <Directory /var/www/html/public>\n\
        AllowOverride All\n\
        Require all granted\n\
    </Directory>\n\
</VirtualHost>\n" > /etc/apache2/sites-available/000-default.conf

# Expose cổng 80
EXPOSE 80

# Chạy Apache khi container khởi động
CMD ["apache2-foreground"]
