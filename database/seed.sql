-- StockGuard PyME - Datos iniciales de prueba
-- Este archivo está pensado para ejecutarse después de schema.sql
-- Base de datos de prueba para desarrollo

INSERT INTO categories (name, description) VALUES
('Bebidas', 'Productos líquidos para consumo'),
('Abarrotes', 'Productos básicos de almacén'),
('Aseo', 'Productos de limpieza y aseo'),
('Librería', 'Útiles escolares y de oficina'),
('Confites', 'Dulces, chocolates y snacks');

INSERT INTO suppliers (name, phone, email, address) VALUES
('Distribuidora San Javier', '+56912345678', 'contacto@distribuidorasanjavier.cl', 'San Javier, Región del Maule'),
('Comercial Maule', '+56987654321', 'ventas@comercialmaule.cl', 'Talca, Región del Maule'),
('Proveedor Local', '+56911112222', 'proveedorlocal@email.com', 'San Javier');

INSERT INTO products (
    name,
    description,
    barcode,
    purchase_price,
    sale_price,
    current_stock,
    minimum_stock,
    category_id,
    supplier_id
) VALUES
(
    'Coca-Cola 1.5L',
    'Bebida gaseosa retornable o desechable de 1.5 litros',
    '780000000001',
    1200,
    1800,
    24,
    6,
    1,
    1
),
(
    'Pan de molde',
    'Pan de molde blanco familiar',
    '780000000002',
    1500,
    2200,
    15,
    5,
    2,
    2
),
(
    'Detergente líquido 3L',
    'Detergente líquido para lavado de ropa',
    '780000000003',
    3500,
    4990,
    10,
    3,
    3,
    2
),
(
    'Cuaderno universitario 100 hojas',
    'Cuaderno cuadriculado de 100 hojas',
    '780000000004',
    800,
    1490,
    30,
    10,
    4,
    3
),
(
    'Chocolate individual',
    'Chocolate individual para venta en caja',
    '780000000005',
    300,
    600,
    50,
    15,
    5,
    3
);

INSERT INTO inventory_movements (
    product_id,
    movement_type,
    quantity,
    reason,
    reference
) VALUES
(1, 'ENTRADA', 24, 'Stock inicial de prueba', 'SEED-001'),
(2, 'ENTRADA', 15, 'Stock inicial de prueba', 'SEED-002'),
(3, 'ENTRADA', 10, 'Stock inicial de prueba', 'SEED-003'),
(4, 'ENTRADA', 30, 'Stock inicial de prueba', 'SEED-004'),
(5, 'ENTRADA', 50, 'Stock inicial de prueba', 'SEED-005');