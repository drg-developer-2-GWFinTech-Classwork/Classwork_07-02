-- Find the count of payments per customer in descending order

SELECT customer_id, COUNT(*) AS "payment_count"
FROM payments
GROUP BY customer_id 
ORDER BY payment_count DESC;

-- Find the top 5 customers who have spend the most money

SELECT customer_id, SUM(amount) AS "payment_total"
FROM payments
GROUP BY customer_id
ORDER BY payment_total DESC
LIMIT 5;

-- Find the bottom 5 customers who have spend the least money

SELECT customer_id, SUM(amount) AS "payment_total"
FROM payments
GROUP BY customer_id
ORDER BY payment_total ASC
LIMIT 5;

-- Find the top 10 customers with the highest average payment

SELECT customer_id, AVG(amount) AS "payment_average"
FROM payments
GROUP BY customer_id
ORDER BY payment_average DESC
LIMIT 10;

-- rounded to two decimal places
-- TODO ROUND(,2) not working

SELECT * FROM payments;

SELECT customer_id, ROUND(AVG(amount), 2) AS "payment_average"
FROM payments
GROUP BY customer_id
ORDER BY payment_average DESC
LIMIT 10;

-- BONUS 1

SELECT * FROM customer;

-- SELECT staff_id, COUNT(*) AS "number_of_customers_serviced"
-- FROM payments
-- GROUP BY staff_id
-- ORDER BY number_of_customers_serviced DESC;

-- BONUS 2

-- SELECT staff_id, COUNT(customer_id) AS "customer_count"
-- FROM payments
-- GROUP BY staff_id;

