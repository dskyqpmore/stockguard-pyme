-- StockGuard PyME - Esquema inicial de base de datos
-- Base de datos pensada para PostgreSQL

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(150),
    address TEXT,
    active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    barcode VARCHAR(50) UNIQUE,
    purchase_price NUMERIC(10, 2) NOT NULL,
    sale_price NUMERIC(10, 2) NOT NULL,
    current_stock INTEGER NOT NULL DEFAULT 0,
    minimum_stock INTEGER NOT NULL DEFAULT 0,
    active BOOLEAN NOT NULL DEFAULT TRUE,

    category_id INTEGER NOT NULL,
    supplier_id INTEGER,

    CONSTRAINT fk_product_category
        FOREIGN KEY (category_id)
        REFERENCES categories(id),

    CONSTRAINT fk_product_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(id),

    CONSTRAINT chk_product_purchase_price
        CHECK (purchase_price >= 0),

    CONSTRAINT chk_product_sale_price
        CHECK (sale_price >= 0),

    CONSTRAINT chk_product_current_stock
        CHECK (current_stock >= 0),

    CONSTRAINT chk_product_minimum_stock
        CHECK (minimum_stock >= 0)
);

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    sale_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(10, 2) NOT NULL DEFAULT 0,
    payment_method VARCHAR(50),
    observation TEXT,

    CONSTRAINT chk_sale_total
        CHECK (total >= 0)
);

CREATE TABLE sale_details (
    id SERIAL PRIMARY KEY,
    sale_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL,
    subtotal NUMERIC(10, 2) NOT NULL,

    CONSTRAINT fk_sale_detail_sale
        FOREIGN KEY (sale_id)
        REFERENCES sales(id),

    CONSTRAINT fk_sale_detail_product
        FOREIGN KEY (product_id)
        REFERENCES products(id),

    CONSTRAINT chk_sale_detail_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_sale_detail_unit_price
        CHECK (unit_price >= 0),

    CONSTRAINT chk_sale_detail_subtotal
        CHECK (subtotal >= 0)
);

CREATE TABLE inventory_movements (
    id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    movement_type VARCHAR(50) NOT NULL,
    quantity INTEGER NOT NULL,
    movement_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    reason TEXT,
    reference VARCHAR(100),

    CONSTRAINT fk_inventory_movement_product
        FOREIGN KEY (product_id)
        REFERENCES products(id),

    CONSTRAINT chk_inventory_movement_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_inventory_movement_type
        CHECK (
            movement_type IN (
                'ENTRADA',
                'VENTA',
                'AJUSTE_POSITIVO',
                'AJUSTE_NEGATIVO',
                'MERMA'
            )
        )
);