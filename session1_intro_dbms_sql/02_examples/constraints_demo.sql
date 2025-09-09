-- constraints_demo.sql
-- Demonstrates NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT

-- Create a demo table with multiple constraints
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    sku VARCHAR(50) UNIQUE,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    in_stock BOOLEAN DEFAULT TRUE
);

-- Example inserts showing constraint behaviors
INSERT INTO products (product_id, product_name, sku, price) VALUES (1, 'USB Cable', 'USB-C-001', 199.99);
-- Inserting duplicate SKU will fail because of UNIQUE constraint
-- INSERT INTO products (product_id, product_name, sku, price) VALUES (2, 'HDMI Cable', 'USB-C-001', 299.99);

-- Inserting NULL for NOT NULL column will fail
-- INSERT INTO products (product_id, product_name, sku, price) VALUES (3, NULL, 'HDMI-002', 149.99);

-- Default value usage
INSERT INTO products (product_id, product_name, sku, price) VALUES (2, 'Wireless Mouse', 'MOUSE-001', 799.00);

-- Show the table
SELECT * FROM products;
