# StockGuard PyME - Casos de Uso

## 1. Actores del sistema

### Administrador del negocio

Persona encargada de administrar el inventario y las ventas del negocio.

Responsabilidades:

- Gestionar productos.
- Controlar inventario.
- Registrar ventas.
- Consultar información del negocio.

---

# Casos de Uso

## CU01 - Registrar producto

### Descripción

El administrador puede ingresar nuevos productos al sistema.

### Flujo principal

1. El usuario selecciona registrar producto.
2. Ingresa los datos del producto.
3. El sistema valida la información.
4. El sistema guarda el producto.

### Datos necesarios

- Nombre.
- Descripción.
- Código de barras.
- Precio compra.
- Precio venta.
- Stock inicial.
- Categoría.

---

## CU02 - Registrar venta

### Descripción

El administrador puede registrar una venta realizada en el negocio.

### Flujo principal

1. El usuario selecciona una venta nueva.
2. Busca los productos vendidos.
3. Indica cantidades.
4. El sistema calcula el total.
5. El sistema descuenta el stock.
6. El sistema guarda la venta.

---

## CU03 - Consultar stock

### Descripción

El usuario puede revisar los productos disponibles.

### Flujo principal

1. El usuario ingresa al módulo inventario.
2. El sistema muestra los productos.
3. El usuario consulta cantidades disponibles.

---

## CU04 - Registrar entrada de inventario


### Descripción

El usuario puede registrar nuevos productos recibidos desde un proveedor.

### Flujo principal

1. El usuario selecciona entrada de inventario.
2. Selecciona el producto.
3. Ingresa cantidad recibida.
4. El sistema actualiza el stock.
5. El sistema registra el movimiento.






## CU05 - Registrar ajuste de stock

### Descripción

El administrador puede ajustar el stock de un producto cuando exista una diferencia entre la cantidad registrada en el sistema y la cantidad real disponible en el negocio.

Este ajuste puede utilizarse en casos como pérdida, merma, error de conteo, producto dañado o corrección manual de inventario.

### Flujo principal

1. El usuario selecciona la opción de ajustar stock.
2. El usuario busca el producto por nombre o código de barras.
3. El sistema muestra el stock actual del producto.
4. El usuario ingresa la cantidad a ajustar.
5. El usuario selecciona el tipo de ajuste: positivo o negativo.
6. El usuario ingresa el motivo del ajuste.
7. El sistema valida que el stock no quede en negativo.
8. El sistema actualiza el stock del producto.
9. El sistema registra el movimiento en el historial de inventario.

### Datos necesarios

- Producto.
- Código de barras.
- Stock actual.
- Tipo de ajuste.
- Cantidad a ajustar.
- Motivo del ajuste.
- Fecha del movimiento.

### Reglas de negocio

- El stock de un producto no puede quedar en negativo.
- Todo ajuste de stock debe quedar registrado como movimiento de inventario.
- El sistema debe solicitar un motivo para justificar el ajuste.
