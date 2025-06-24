/*=====================================================================
  DVD RENTAL – OPERATIONS & CUSTOMER ANALYTICS
  --------------------------------------------------------------------
  A script for analysts and managers to answer the questions they ask most often:

    1.  Sales & revenue performance
    2.  Inventory utilisation and catalogue gaps
    3.  Customer behaviour & segmentation
    4.  Store-level and employee performance
    5.  Pricing & discount diagnostics
=====================================================================*/

/*=====================================================================
  SECTION 1 — SALES & REVENUE
=====================================================================*/

-- 1A: Largest single payment ever received (sanity check)
SELECT MAX(amount) AS max_single_payment
FROM payment;

-- 1B: Running lifetime spend for a key customer (example: Eleanor Hunt)
SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    p.payment_date,
    p.amount,
    SUM(p.amount) OVER (PARTITION BY c.customer_id ORDER BY p.payment_date)
        AS cumulative_amount
FROM customer      AS c
JOIN payment       AS p USING (customer_id)
WHERE c.first_name = 'Eleanor'
  AND c.last_name  = 'Hunt'
ORDER BY p.payment_date;


/*=====================================================================
  SECTION 2 — INVENTORY & CATALOGUE INSIGHTS
=====================================================================*/

-- 2A: Films in catalogue that were never stocked (lost opportunity)
SELECT f.film_id,
       f.title
FROM film AS f
LEFT JOIN inventory AS i
       ON f.film_id = i.film_id
WHERE i.film_id IS NULL;

-- 2B: Under-performing titles: fewer than 10 rentals lifetime
SELECT
    f.title,
    COUNT(r.rental_id) AS rental_count
FROM film       AS f
JOIN inventory  AS i USING (film_id)
JOIN rental     AS r USING (inventory_id)
GROUP BY f.title
HAVING COUNT(r.rental_id) < 10
ORDER BY rental_count ASC;

-- 2C: “Modern epics”: post-2000 films longer than 2 h
SELECT *
FROM film
WHERE release_year > 2000
  AND length       > 120;


/*=====================================================================
  SECTION 3 — CUSTOMER BEHAVIOUR & SEGMENTATION
=====================================================================*/

-- 3A: Top renters (lifetime) — customer leaderboard
WITH rental_count AS (
    SELECT customer_id, COUNT(*) AS num_rentals
    FROM rental
    GROUP BY customer_id
)
SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    rc.num_rentals
FROM customer       AS c
JOIN rental_count   AS rc USING (customer_id)
ORDER BY rc.num_rentals DESC;

-- 3B: Favourite genre for every customer
WITH genre_counts AS (
    SELECT
        r.customer_id,
        fc.category_id,
        COUNT(*) AS genre_count
    FROM rental          AS r
    JOIN inventory       AS i  USING (inventory_id)
    JOIN film            AS f  USING (film_id)
    JOIN film_category   AS fc USING (film_id)
    GROUP BY r.customer_id, fc.category_id
), top_genre AS (
    SELECT
        customer_id,
        MAX(genre_count) AS top_count
    FROM genre_counts
    GROUP BY customer_id
)
SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    cat.name                           AS favourite_genre,
    tg.top_count                       AS rentals_in_genre
FROM customer     AS c
JOIN top_genre    AS tg ON c.customer_id = tg.customer_id
JOIN genre_counts AS gc ON gc.customer_id = tg.customer_id
                       AND gc.genre_count = tg.top_count
JOIN category     AS cat USING (category_id)
ORDER BY c.customer_id;

-- 3C: Favourite genre per customer 
WITH customer_rental_counts AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        cat.category_id,
        cat.name                                 AS genre_name,
        COUNT(DISTINCT r.rental_id)              AS rental_count
    FROM customer        AS c
    JOIN rental          AS r   ON c.customer_id  = r.customer_id
    JOIN inventory       AS i   ON r.inventory_id = i.inventory_id
    JOIN film            AS f   ON i.film_id      = f.film_id
    JOIN film_category   AS fc  ON f.film_id      = fc.film_id
    JOIN category        AS cat ON fc.category_id = cat.category_id
    GROUP BY c.customer_id, cat.category_id
),
winning_counts AS (
    SELECT
        customer_id,
        MAX(rental_count) AS top_count
    FROM customer_rental_counts
    GROUP BY customer_id
)
SELECT
    crc.customer_id,
    crc.first_name || ' ' || crc.last_name AS customer_name,
    crc.genre_name                          AS favourite_genre,
    crc.rental_count                        AS rentals_in_genre
FROM winning_counts       AS wc
JOIN customer_rental_counts AS crc
      ON crc.customer_id  = wc.customer_id
     AND crc.rental_count = wc.top_count
ORDER BY crc.customer_id;

/*=====================================================================
  SECTION 4 — STORE & STAFF PERFORMANCE
=====================================================================*/

-- 4A: Rentals processed per staff member (workload / commission calc)
SELECT
    s.staff_id,
    s.first_name || ' ' || s.last_name AS staff_name,
    COUNT(*)                           AS rentals_handled
FROM staff  AS s
JOIN rental AS r USING (staff_id)
GROUP BY s.staff_id, staff_name
ORDER BY rentals_handled DESC;

-- 4B: Most recent rental handled by a given staff member (id = 2)
WITH latest_rental AS (
    SELECT MAX(rental_date) AS max_date
    FROM rental
    WHERE staff_id = 2
)
SELECT r.*
FROM rental        AS r
JOIN latest_rental AS lr
     ON r.rental_date = lr.max_date
WHERE r.staff_id = 2;

-- 4C: Best-selling title in each store (for local merchandising)
WITH store_rentals AS (
    SELECT
        st.store_id,
        f.film_id,
        f.title,
        COUNT(r.rental_id) AS rental_count
    FROM staff      AS st
    JOIN rental     AS r  ON st.staff_id   = r.staff_id
    JOIN inventory  AS i  ON r.inventory_id = i.inventory_id
    JOIN film       AS f  ON i.film_id     = f.film_id
    GROUP BY st.store_id, f.film_id, f.title
), store_top AS (
    SELECT
        store_id,
        MAX(rental_count) AS top_rental_count
    FROM store_rentals
    GROUP BY store_id
)
SELECT
    st.store_id,
    sr.title,
    st.top_rental_count AS rental_count
FROM store_top      AS st
JOIN store_rentals  AS sr
     ON st.store_id          = sr.store_id
    AND st.top_rental_count  = sr.rental_count
ORDER BY st.store_id;


/*=====================================================================
  SECTION 5 — PRICING & DISCOUNT DIAGNOSTICS
=====================================================================*/

-- 5A: Price consistency: compare each film’s rental_rate to neighbours
SELECT
    film_id,
    title,
    rental_rate,
    LEAD(rental_rate) OVER (ORDER BY film_id)          AS next_price,
    LAG (rental_rate, 3) OVER (ORDER BY film_id)       AS three_prices_ago
FROM film;

-- 5B: Lowest payment ever made by customer 341 (check extreme discount)
SELECT
    customer_id,
    MIN(amount) AS smallest_payment
FROM payment
GROUP BY customer_id
HAVING customer_id = 341;


/*=====================================================================
  AD-HOC UTILITIES
=====================================================================*/

-- QA: Identify rentals with NO payment (revenue leakage)
SELECT r.*
FROM rental  AS r
LEFT JOIN payment AS p USING (rental_id)
WHERE p.payment_id IS NULL;

-- QB: Full rental history for Barbara Jones 
SELECT r.*
FROM customer AS c
JOIN rental   AS r ON c.customer_id = r.customer_id
WHERE c.first_name = 'Barbara'
  AND c.last_name  = 'Jones';



