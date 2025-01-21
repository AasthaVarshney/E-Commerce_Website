create database userappdb;

use userappdb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Drop existing products table if exists
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    mrp DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    category VARCHAR(50),
    brand VARCHAR(50),
    image_url VARCHAR(255) NOT NULL,
    status ENUM('ACTIVE', 'INACTIVE') DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create cart table
CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    total_price DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- Create indexes for better query performance
CREATE INDEX idx_cart_user ON cart(user_id);
CREATE INDEX idx_cart_product ON cart(product_id);

-- Insert sample products
INSERT INTO products (name, description, price, mrp, stock, category, brand, image_url) VALUES
('Shirt', 'Latest Shirt ', 999.99, 1299.99, 50, 'Electronics', 'TechBrand', 'image/1.png'),
('Latest Smart Watch', 'High-performance Watch for professionals', 1499.99, 1999.99, 30, 'Electronics', 'CompTech', 'image/2.png'),
('Stylish YSL Heels', 'Comfortable athletic Heels', 79.99, 2,71,365, 100, 'Sports', 'SportsFit', 'image/3.png'),
('Samsung Airpods', '24 hours performance Buds', 49.99, 10,000.99, 40, 'Appliances', 'HomePlus', 'image/4.png'),
('Gucci Bag', 'Stylish and branded Bag', 39.99, 10,0000, 75, 'Accessories', 'TravelGear', 'image/5.png'),
('Jacket', 'lather Jacket', 199.99, 25,000.99, 60, 'Electronics', 'TechBrand', 'image/6.png'),
('latest Monitor', 'high performance latest 24k inch Monitor', 129.99, 159.99, 45, 'Electronics', 'AudioTech', 'image/7.png'),
('Gaming Keyboard', ' latest Gaming Keyboard', 59.99, 79.99, 80, 'Gaming', 'GameTech', 'image/8.png'),
('Vision pro', 'latest Vision pro', 199.99, 2,9900.99, 25, 'Furniture', 'OfficePro', 'image/9.png'),
('Cctv Camera ', 'special feature Camera', 2400.99, 34.99, 120, 'Accessories', 'EcoLife', 'image/10.png'),
('Pen Drive', 'Pen Drive', 29.99, 39.99, 90, 'Sports', 'FitLife', 'image/11.png'),
('CPU', 'Latest CPU', 299.99, 399.99, 35, 'Electronics', 'ScreenTech', 'image/12.png'),
('Mouse', 'Mouse', 79.99, 99.99, 55, 'Electronics', 'AudioTech', 'image/13.png'),
('Mic', 'Mic', 89.99, 119.99, 40, 'Appliances', 'HomePlus', 'image/14.png'),
('Speaker', 'Advanced Activity High Range Speaker', 49.99, 69.99, 70, 'Electronics', 'FitTech', 'image/15.png'),
('I phone 16 pro Max', '256GB Grey titanium', 89.99, 144,900.00, 60, 'Gaming', 'GameTech', 'image/16.png');

-- Create index for faster searches
CREATE INDEX idx_product_category ON products(category);
CREATE INDEX idx_product_status ON products(status);
CREATE INDEX idx_product_price ON products(price);
