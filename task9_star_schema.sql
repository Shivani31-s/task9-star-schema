-- ===============================
-- STAR SCHEMA CREATION
-- ===============================

CREATE TABLE dim_customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100),
    sub_category VARCHAR(100)
);

CREATE TABLE dim_date (
    date_id SERIAL PRIMARY KEY,
    order_date DATE,
    year INT,
    quarter INT,
    month INT,
    day INT
);

CREATE TABLE dim_region (
    region_id SERIAL PRIMARY KEY,
    country VARCHAR(100),
    city VARCHAR(100),
    region VARCHAR(100)
);

CREATE TABLE fact_sales (
    sales_id SERIAL PRIMARY KEY,
    order_id VARCHAR(50),
    customer_id INT REFERENCES dim_customer(customer_id),
    product_id INT REFERENCES dim_product(product_id),
    date_id INT REFERENCES dim_date(date_id),
    region_id INT REFERENCES dim_region(region_id),
    sales_amount DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);

-- ===============================
-- INDEXES
-- ===============================

CREATE INDEX idx_fact_customer ON fact_sales(customer_id);
CREATE INDEX idx_fact_product ON fact_sales(product_id);
CREATE INDEX idx_fact_date ON fact_sales(date_id);
CREATE INDEX idx_fact_region ON fact_sales(region_id);
