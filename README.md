# BSBI Telecommunications Database Project (2025)

This project presents a relational database system designed for a telecommunications provider. It supports core components such as customer management, service plans, call/data usage tracking, and billing information.

---

## Project Files

| File Name                        | Description |
|----------------------------------|-------------|
| `telecom_schema.sql`             | Defines the database schema, including tables and relationships. |
| `insert_sample_data_10rows.sql`  | Inserts realistic sample data into all tables for testing and querying. |
| `telecom_extended_queries.sql`   | Contains 10 SQL queries to analyze customer usage, plans, and billing. |
| `ER_diagram.png`                 | ER diagram visualizing the logical structure of the database. |

---

## How to Use

1. **Create the database and tables**  
   Run `telecom_schema.sql` in your MySQL environment.

2. **Insert sample data**  
   Execute `insert_sample_data_10rows.sql` to populate the database with 10 example rows per table.

3. **Run analytical queries**  
   Use `telecom_extended_queries.sql` to retrieve insights about customer behavior and service plan usage.

4. **Understand the structure visually**  
   Refer to `ER_diagram.png` for an overview of the database relationships.

---

## Query Highlights

The `telecom_extended_queries.sql` file includes the following 10 analytical SQL queries:

1. List all customers  
2. Show each customer’s subscribed plan  
3. Latest subscription date per customer  
4. Total data usage per customer (MB)  
5. The customer with the most total call duration  
6. Customers with bills exceeding 150 TL  
7. Monthly billing history per customer  
8. Average data usage per service plan  
9. Total number of calls per customer  
10. Customers who paid no extra charges

---


