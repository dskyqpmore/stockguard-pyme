# StockGuard PyME

StockGuard PyME es una aplicación web para la gestión de inventario y ventas en negocios pequeños, como bazares, almacenes, minimarkets y tiendas de barrio.

## Estado del proyecto

En planificación.

## Objetivo

Construir una solución simple, ordenada y profesional que permita controlar productos, stock, movimientos de inventario y ventas básicas.

## Tecnologías planificadas

- Python
- FastAPI
- PostgreSQL
- React
- TypeScript
- Git
- GitHub

## Ejecutar base de datos con Docker

Este proyecto utiliza Docker Compose para levantar una base de datos PostgreSQL en un contenedor.

### Requisitos

- Docker Desktop instalado
- Git instalado
- Visual Studio Code recomendado

### Levantar PostgreSQL

Desde la raíz del proyecto, ejecutar:

```bash
docker compose up -d
```

Este comando crea y ejecuta un contenedor PostgreSQL con la base de datos `stockguard_pyme`.

### Ver contenedores activos

```bash
docker ps
```

Debe aparecer un contenedor llamado:

```text
stockguard_postgres
```

### Entrar a PostgreSQL

```bash
docker exec -it stockguard_postgres psql -U postgres -d stockguard_pyme
```

### Ver tablas creadas

Dentro de PostgreSQL, ejecutar:

```sql
\dt
```

### Consultar productos de prueba

```sql
SELECT * FROM products;
```

### Salir de PostgreSQL

```sql
\q
```

### Detener los contenedores

```bash
docker compose down
```

Este comando detiene el contenedor, pero mantiene los datos guardados en el volumen de Docker.

## Autor

Matías Felipe González Gajardo