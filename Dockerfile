FROM php:8.2-apache

# Instalar dependencias necesarias para compilar extensiones PHP
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/*

# Instalar extensiones de PHP necesarias
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql gd zip

# Habilitar mod_rewrite de Apache
RUN a2enmod rewrite

# Configurar el directorio de trabajo
WORKDIR /var/www/html

