# Docker Compose - PHP, MySQL y phpMyAdmin

Este proyecto incluye una configuración de Docker Compose para ejecutar un entorno de desarrollo con PHP, MySQL y phpMyAdmin.

## Requisitos

- Docker
- Docker Compose

## Configuración

### Servicios incluidos:

1. **PHP 8.2 con Apache** - Puerto 8080
   - ECOMMERCE disponible en: http://localhost:8080/ecommerce/
   - TRIP_AGENCY disponible en: http://localhost:8080/tripagency/

2. **MySQL 8.0** - Puerto 3306
   - Usuario root: `root`
   - Contraseña root: `rootpassword`
   - Usuario adicional: `phpuser`
   - Contraseña usuario: `phppassword`
   - Bases de datos: `ecommerce` y `tripagency`

3. **phpMyAdmin** - Puerto 8081
   - Disponible en: http://localhost:8081
   - Usuario: `root`
   - Contraseña: `rootpassword`

## Uso

### Iniciar los servicios:

```bash
docker-compose up -d
```

### Detener los servicios:

```bash
docker-compose down
```

### Detener y eliminar volúmenes (elimina los datos de MySQL):

```bash
docker-compose down -v
```

### Ver logs:

```bash
docker-compose logs -f
```

### Ver logs de un servicio específico:

```bash
docker-compose logs -f php
docker-compose logs -f mysql
docker-compose logs -f phpmyadmin
```

## Configuración de conexión a la base de datos

**IMPORTANTE**: Los archivos `db.php` necesitan ser actualizados para usar el nombre del servicio MySQL en lugar de `localhost`:

- Cambiar `$host = "localhost";` por `$host = "mysql";`

O puedes usar las variables de entorno del contenedor MySQL:
- Host: `mysql` (nombre del servicio en docker-compose)
- Puerto: `3306`
- Usuario: `root` o `phpuser`
- Contraseña: `rootpassword` o `phppassword`

## Acceso a los servicios

- **Aplicación PHP**: http://localhost:8080
- **phpMyAdmin**: http://localhost:8081
- **MySQL**: localhost:3306

## Notas

- Los datos de MySQL se persisten en un volumen Docker llamado `mysql_data`
- Las bases de datos se crean automáticamente al iniciar el contenedor por primera vez
- Los archivos PHP se montan como volúmenes, por lo que los cambios se reflejan inmediatamente

