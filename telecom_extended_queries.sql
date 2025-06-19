
USE telecom_db;

-- 1. List all customers
SELECT * FROM customers;

-- 2. Show each customer's name and their subscribed service plan
SELECT 
    c.name AS customer_name,
    sp.name AS plan_name,
    sp.monthly_fee
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    service_plans sp ON s.plan_id = sp.plan_id;

-- 3. Find the most recent subscription start date
SELECT MAX(start_date) AS latest_subscription FROM subscriptions;

-- 4. Calculate total data usage (in MB) per customer
SELECT 
    c.name,
    SUM(du.mb_used) AS total_data_mb
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    data_usage du ON s.subscription_id = du.subscription_id
GROUP BY 
    c.name;

-- 5. Find the customer with the highest total call duration
SELECT 
    c.name,
    SUM(cr.duration_sec) AS total_duration
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    call_records cr ON s.subscription_id = cr.subscription_id
GROUP BY 
    c.name
ORDER BY 
    total_duration DESC
LIMIT 1;

-- 6. List customers whose bill total exceeds 150
SELECT 
    c.name,
    b.total_amount
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    bills b ON s.subscription_id = b.subscription_id
WHERE 
    b.total_amount > 150;

-- 7. Show the monthly billing history of each customer
SELECT 
    c.name,
    b.billing_month,
    b.total_amount
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    bills b ON s.subscription_id = b.subscription_id
ORDER BY 
    b.billing_month, c.name;

-- 8. Average data usage by service plan
SELECT 
    sp.name AS plan_name,
    AVG(du.mb_used) AS avg_data_usage
FROM 
    service_plans sp
JOIN 
    subscriptions s ON sp.plan_id = s.plan_id
JOIN 
    data_usage du ON s.subscription_id = du.subscription_id
GROUP BY 
    sp.name;

-- 9. Total number of calls made by each customer
SELECT 
    c.name,
    COUNT(cr.call_id) AS total_calls
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    call_records cr ON s.subscription_id = cr.subscription_id
GROUP BY 
    c.name;

-- 10. Customers who have not incurred extra charges in their bill
SELECT 
    c.name,
    b.total_amount
FROM 
    customers c
JOIN 
    subscriptions s ON c.customer_id = s.customer_id
JOIN 
    bills b ON s.subscription_id = b.subscription_id
WHERE 
    b.extra_charges = 0;
