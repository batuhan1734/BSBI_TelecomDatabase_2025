
-- Create and use database
DROP DATABASE IF EXISTS telecom_db;
CREATE DATABASE telecom_db;
USE telecom_db;

-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address TEXT,
    registration_date DATE NOT NULL
);

-- Create service_plans table
CREATE TABLE service_plans (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    data_limit_gb INT,
    voice_minutes INT,
    monthly_fee DECIMAL(10,2) NOT NULL
);

-- Create subscriptions table
CREATE TABLE subscriptions (
    subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    plan_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (plan_id) REFERENCES service_plans(plan_id)
);

-- Create call_records table
CREATE TABLE call_records (
    call_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    call_time DATETIME,
    duration_sec INT,
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);

-- Create data_usage table
CREATE TABLE data_usage (
    usage_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    usage_date DATE,
    mb_used DECIMAL(10,2),
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);

-- Create bills table
CREATE TABLE bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    billing_month DATE,
    total_amount DECIMAL(10,2),
    extra_charges DECIMAL(10,2),
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);
