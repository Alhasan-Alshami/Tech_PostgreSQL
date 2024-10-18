-- Create the customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY, -- Auto-incrementing primary key
    customer_name TEXT NOT NULL, -- Customer's name (required)
    email TEXT NOT NULL UNIQUE, -- Customer's email (required and must be unique)
    phone_number TEXT NOT NULL, -- Customer's phone number (required)
    address TEXT NOT NULL -- Customer's address (required)
);

-- Create the products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY, -- Auto-incrementing primary key
    product_name TEXT NOT NULL, -- Product name (required)
    category TEXT NOT NULL, -- Product category (required)
    price NUMERIC(10, 2) NOT NULL, -- Product price (required with two decimal places)
    stock_quantity INTEGER NOT NULL CHECK (stock_quantity >= 0) -- Stock quantity (required and must be non-negative)
);

-- Create the sales table
CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY, -- Auto-incrementing primary key
    product_id INTEGER NOT NULL, -- Product ID (required)
    customer_id INTEGER NOT NULL, -- Customer ID (required)
    sale_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Sale date with current timestamp as default
    day INTEGER NOT NULL CHECK (day >= 1 AND day <= 31), -- Day of the sale (required, must be between 1 and 31)
    month INTEGER NOT NULL CHECK (month >= 1 AND month <= 12), -- Month of the sale (required, must be between 1 and 12)
    year INTEGER NOT NULL CHECK (year > 0), -- Year of the sale (required, must be a positive integer)
    quantity INTEGER NOT NULL CHECK (quantity > 0), -- Quantity sold (required and must be positive)
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE, -- Foreign key constraint for product_id
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE -- Foreign key constraint for customer_id
);




