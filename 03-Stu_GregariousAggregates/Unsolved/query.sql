-- Delete and make the payments table

DROP TABLE IF EXISTS payments;
CREATE TABLE payments (
	payment_id SERIAL PRIMARY KEY,
	customer_id INT,
	staff_id INT,
	rental_id INT,
	amount NUMERIC(5,2),
	payment_date TIMESTAMP
);

SELECT * FROM payments;

--1. What is the average payment amount?

SELECT AVG(amount) AS "avg_payment_amount"
from payments;

--2. What is the total payment amount?

SELECT SUM(amount) AS "total_payment_amount"
from payments;

--3. What is the minimum payment amount?

SELECT MIN(amount) AS "min_payment_amount"
from payments;

--4. What is the maximum payment amount?

SELECT MAX(amount) AS "max_payment_amount"
from payments;

--5. What is the count of payments for each customer?

SELECT customer_id, COUNT(*) AS "payment_count"
FROM payments
GROUP BY customer_id;

--6. How many customers has each staff serviced?

SELECT staff_id, COUNT(*) AS "number_of_staff_serviced"
FROM payments
GROUP BY staff_id;
