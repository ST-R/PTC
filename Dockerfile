# Start from the PHP Alpine image
FROM php:8.1.0-fpm-alpine

# Set the working directory
WORKDIR /var/www/html

# Install dependencies
RUN apk update && apk add --no-cache \
    icu-dev \
    gettext-dev \
    libzip-dev \
    unzip \
    zip \
    bash \
    openssl \
    composer

# Configure and install PHP extensions
RUN docker-php-ext-install gettext intl pdo_mysql

# Copy Composer from the official image (if needed)
# Note: Composer might already be included in the PHP Alpine image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create a directory for SSL certificates
RUN mkdir -p /etc/ssl/nginx