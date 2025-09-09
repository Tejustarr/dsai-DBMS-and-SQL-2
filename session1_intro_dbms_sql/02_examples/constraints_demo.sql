-- constraints_demo.sql
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    sku VARCHAR(50) UNIQUE,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    in_stock BOOLEAN DEFAULT TRUE
);

INSERT INTO products (product_id, product_name, sku, price) VALUES (1, 'USB Cable', 'USB-C-001', 199.99);
INSERT INTO products (product_id, product_name, sku, price) VALUES (2, 'Wireless Mouse', 'MOUSE-001', 799.00);
SELECT * FROM products;
