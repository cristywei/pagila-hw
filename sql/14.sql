/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT title FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category USING (category_id)
WHERE category_id = 8
ORDER BY title;

/*
SELECT category_id, name FROM category;
SELECT title FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category USING (category_id)
WHERE category_id = 8
GROUP BY title;
DROP TABLE category;
*/
/*
--SELECT *
FROM CATEGORY;
SELECT title
FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category USING (category_id);
*/
