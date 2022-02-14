/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT first_name, last_name, SUM(amount)
FROM payment
JOIN staff USING (staff_id)
WHERE EXTRACT(MONTH FROM payment_date) = 1
GROUP BY first_name, last_name;
