-- Script de inicialización de bases de datos
-- Este script se ejecuta automáticamente cuando se crea el contenedor MySQL por primera vez

-- Crear base de datos ecommerce si no existe
CREATE DATABASE IF NOT EXISTS ecommerce CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Crear base de datos tripagency si no existe
CREATE DATABASE IF NOT EXISTS tripagency CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Otorgar permisos al usuario
GRANT ALL PRIVILEGES ON ecommerce.* TO 'phpuser'@'%';
GRANT ALL PRIVILEGES ON tripagency.* TO 'phpuser'@'%';
FLUSH PRIVILEGES;

