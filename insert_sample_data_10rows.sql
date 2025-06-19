
USE telecom_db;

-- Insert customers
INSERT INTO customers (name, email, phone, address, registration_date) VALUES
('Ahmet Yılmaz', 'ahmet@example.com', '05321234567', 'Istanbul', '2023-01-10'),
('Ayşe Demir', 'ayse@example.com', '05329876543', 'Ankara', '2023-02-15'),
('Mehmet Kaya', 'mehmet@example.com', '05323451234', 'Izmir', '2023-03-01'),
('Zeynep Koç', 'zeynep@example.com', '05324561234', 'Bursa', '2023-04-01'),
('Emre Aydın', 'emre@example.com', '05325673456', 'Antalya', '2023-05-12'),
('Elif Öz', 'elif@example.com', '05326784567', 'Adana', '2023-06-23'),
('Burak Yalçın', 'burak@example.com', '05327895678', 'Konya', '2023-07-04'),
('Deniz Yılmaz', 'deniz@example.com', '05328906789', 'Eskişehir', '2023-08-16'),
('Fatma Çelik', 'fatma@example.com', '05329017890', 'Samsun', '2023-09-27'),
('Can Erdem', 'can@example.com', '05320128901', 'Gaziantep', '2023-10-03');

-- Insert service plans
INSERT INTO service_plans (name, data_limit_gb, voice_minutes, monthly_fee) VALUES
('Standart Plan', 10, 1000, 99.99),
('Premium Plan', 30, 3000, 149.99),
('Mega Plan', 100, 5000, 199.99);

-- Insert subscriptions
INSERT INTO subscriptions (customer_id, plan_id, start_date, end_date) VALUES
(1, 1, '2023-01-15', NULL),
(2, 2, '2023-02-20', NULL),
(3, 1, '2023-03-05', NULL),
(4, 3, '2023-04-10', NULL),
(5, 2, '2023-05-15', NULL),
(6, 1, '2023-06-20', NULL),
(7, 3, '2023-07-25', NULL),
(8, 2, '2023-08-30', NULL),
(9, 1, '2023-09-12', NULL),
(10, 3, '2023-10-18', NULL);

-- Insert call records
INSERT INTO call_records (subscription_id, call_time, duration_sec) VALUES
(1, '2023-11-01 10:00:00', 120),
(2, '2023-11-01 11:00:00', 300),
(3, '2023-11-01 12:00:00', 150),
(4, '2023-11-01 13:00:00', 100),
(5, '2023-11-01 14:00:00', 200),
(6, '2023-11-01 15:00:00', 180),
(7, '2023-11-01 16:00:00', 160),
(8, '2023-11-01 17:00:00', 220),
(9, '2023-11-01 18:00:00', 140),
(10, '2023-11-01 19:00:00', 190);

-- Insert data usage
INSERT INTO data_usage (subscription_id, usage_date, mb_used) VALUES
(1, '2023-11-01', 500.0),
(2, '2023-11-01', 800.0),
(3, '2023-11-01', 750.0),
(4, '2023-11-01', 650.0),
(5, '2023-11-01', 950.0),
(6, '2023-11-01', 400.0),
(7, '2023-11-01', 300.0),
(8, '2023-11-01', 1000.0),
(9, '2023-11-01', 600.0),
(10, '2023-11-01', 850.0);

-- Insert bills
INSERT INTO bills (subscription_id, billing_month, total_amount, extra_charges) VALUES
(1, '2023-11-01', 99.99, 10.00),
(2, '2023-11-01', 149.99, 0.00),
(3, '2023-11-01', 99.99, 25.00),
(4, '2023-11-01', 199.99, 15.00),
(5, '2023-11-01', 149.99, 5.00),
(6, '2023-11-01', 99.99, 0.00),
(7, '2023-11-01', 199.99, 30.00),
(8, '2023-11-01', 149.99, 12.00),
(9, '2023-11-01', 99.99, 8.00),
(10, '2023-11-01', 199.99, 18.00);
