# StockGuard PyME - Modelo de Datos Inicial

## 1. Objetivo del modelo de datos

El objetivo del modelo de datos es definir qué información guardará el sistema y cómo se relacionan los datos entre sí.

## 2. Entidades principales

Las entidades principales del sistema serán:

- Producto
- Categoría
- Proveedor
- Venta
- Detalle de venta
- Movimiento de inventario

## 3. Producto

Representa un artículo que el negocio vende o administra en su inventario.

Datos iniciales:

- id
- nombre
- descripción
- código de barras
- precio de compra
- precio de venta
- stock actual
- stock mínimo
- activo
- categoría

## Ejemplos de productos

- Coca-Cola 1.5L
- Pan de molde
- Cuaderno universitario 100 hojas
- Detergente líquido 3L
- Pilas AA

## 4. Categoría

Representa una clasificación para ordenar los productos.

Datos iniciales:

- id
- nombre
- descripción
- activo

## Ejemplos de categorías

- Bebidas
- Abarrotes
- Aseo
- Librería
- Confites

## 5. Proveedor

Representa a una persona o empresa que entrega productos al negocio.

Datos iniciales:

- id
- nombre
- teléfono
- correo
- dirección
- activo

## 6. Venta

Representa una venta realizada en el negocio.

Datos iniciales:

- id
- fecha
- total
- método de pago
- observación

## 7. Detalle de venta

Representa los productos incluidos dentro de una venta.

Datos iniciales:

- id
- venta
- producto
- cantidad
- precio unitario
- subtotal

## 8. Movimiento de inventario

Representa cualquier cambio en el stock de un producto.

Tipos de movimiento:

- Entrada
- Venta
- Ajuste positivo
- Ajuste negativo
- Merma

Datos iniciales:

- id
- producto
- tipo de movimiento
- cantidad
- fecha
- motivo
- referencia