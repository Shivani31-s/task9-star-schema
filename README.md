📊 Task 9: SQL Data Modeling — Star Schema
👩‍💻 Objective

The goal of this task is to design and implement a Star Schema for a retail sales dataset and perform analytical queries using SQL. This helps in understanding data warehouse modeling used in Business Intelligence (BI) systems.

⭐ What is a Star Schema?

A Star Schema consists of:

One Fact Table → Stores measurable business data (sales, profit, quantity)

Multiple Dimension Tables → Store descriptive details (customer, product, date, region)

The structure looks like a star, with the fact table at the center connected to dimension tables.

🗂 Database Tables Created
🔹 Fact Table

fact_sales

sales_id (PK)

order_id

customer_id (FK)

product_id (FK)

date_id (FK)

region_id (FK)

sales_amount

quantity

discount

profit

🔹 Dimension Tables

dim_customer

customer_id (PK)

customer_name

segment

dim_product

product_id (PK)

product_name

category

sub_category

dim_date

date_id (PK)

order_date

year

quarter

month

day

dim_region

region_id (PK)

country

city

region

🔗 Relationships

The fact_sales table connects to all dimension tables using foreign keys:

Fact Column	References
customer_id	dim_customer
product_id	dim_product
date_id	dim_date
region_id	dim_region
⚙️ Indexes Created

Indexes were added on foreign keys in the fact table to improve query performance:

idx_fact_customer

idx_fact_product

idx_fact_date

idx_fact_region

📊 Sample Analysis Queries Performed

✔ Total Sales by Year
✔ Sales by Region
✔ Top 5 Products by Profit

Results from these queries are included in analysis_outputs.csv.

🖼 Star Schema Diagram

The schema diagram was created using dbdiagram.io / draw.io and exported as:

star_schema_diagram.png

It visually shows the star structure with the fact table at the center.

📁 Files in This Repository
File Name	Description
task9_star_schema.sql	SQL script to create schema and indexes
star_schema_diagram.png	Visual diagram of the star schema
analysis_outputs.csv	Output of analytical SQL queries
README.md	Documentation of the task
🎯 Learning Outcome

Through this task, I learned:

How to design a data warehouse schema

Difference between Fact and Dimension tables

Importance of surrogate keys

How indexes improve performance

How Star Schema supports fast BI reporting