# Bước 1: Chọn image PHP có sẵn Apache
FROM php:8.2-apache

# Cài đặt các extension và công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Kích hoạt mod_rewrite để Laravel hoạt động với route
RUN a2enmod rewrite

# Đặt thư mục làm việc mặc định
WORKDIR /var/www/html

# Cài Composer từ image chính thức
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copy toàn bộ mã nguồn Laravel vào container
COPY . /var/www/html

# Cài đặt các gói Laravel (Composer)
RUN composer install --no-dev --optimize-autoloader

# Phân quyền storage & bootstrap
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Cấu hình VirtualHost cho Apache
RUN printf "<VirtualHost *:80>\n\
    DocumentRoot /var/www/html/public\n\
    <Directory /var/www/html/public>\n\
        AllowOverride All\n\
        Require all granted\n\
    </Directory>\n\
</VirtualHost>\n" > /etc/apache2/sites-available/000-default.conf

# Mở cổng 80
EXPOSE 80

# Chạy Apache khi container khởi động
CMD ["apache2-foreground"]
