-- Comments in SQL Start with dash-dash --
--1
SELECT * FROM analytics WHERE ID = 1880;
--2
SELECT * FROM analytics WHERE last_updated = 'August 01, 2018';
--3
SELECT category, COUNT(*) FROM analytics GROUP BY category;
--4
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
--5
SELECT app_name, reviews, rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
--6
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating DESC; 
--7
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--8
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating BETWEEN 0.01 AND 5 ORDER BY rating DESC LIMIT 50;
--9
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews > 10000;
--10
SELECT app_name, reviews, price FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
--11
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
--12
SELECT app_name, price FROM analytics ORDER BY price DESC  LIMIT 1;
--13
SELECT SUM(reviews) from analytics;
--14
SELECT category, COUNT(*) AS total_apps FROM analytics GROUP BY category HAVING COUNT(*) > 300 ORDER BY total_apps DESC; 
--15
SELECT app_name, reviews, min_installs, min_installs/reviews AS min_installs_proportionate_to_reviews 
FROM analytics 
WHERE min_installs >= 100000 
ORDER BY min_installs_proportionate_to_reviews DESC LIMIT 1;
