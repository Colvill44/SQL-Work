show columns
from e_store.products;

show columns
from e_store.reviews;

select *
from e_store.products;

select min(price)
from e_store.products;

select min(price) as minimum_product_price
from e_store.products;

select min(stars) as lowest_star, product_id
from e_store.reviews
where product_id = 4;

select min(price) as product_min_price, max(price) as product_max_price
from e_store.products
where id <=5;

SELECT products.id, name, AVG(stars) AS stars_avg
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE product_id = 1;

SELECT products.id, name, stars 
FROM products JOIN reviews 
ON products.id = reviews.product_id;

SELECT products.id, name, AVG(stars) 
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE products.name = 'Smartphone' OR products.name = 
'Headphones';

SELECT products.id, name, AVG(stars) 
FROM products JOIN reviews 
ON products.id = reviews.product_id 
WHERE reviews.product_id = 2 OR reviews.product_id = 4
GROUP BY products.id;

SELECT name, AVG(stars) 
FROM products JOIN reviews 
ON products.id = reviews.product_id 
WHERE reviews.product_id = 2;

SELECT name, AVG(stars) 
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE reviews.product_id = 4;

SELECT AVG(stars) 
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE reviews.product_id = 2 OR reviews.product_id = 4;

SELECT products.id, name, AVG(stars) 
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE reviews.product_id = 2 OR reviews.product_id = 4;

SELECT products.id, name, AVG(stars) AS 
avg_stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
GROUP BY products.id;

SELECT products.id, name, AVG(stars) AS avg_stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE products.name = 'Smartphone'  
OR products.name = 'Headphones'
GROUP BY products.name;

SELECT products.id, name, stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE reviews.product_id = 2 OR reviews.product_id = 4;

select products.id, name, avg(stars) as avg_stars
from products join reviews 
on products.id = reviews.product_id
where products.id = 2 or products.id = 4 
group by(products.id);

select name, avg(stars) as avg_stars
from products join reviews 
on products.id = reviews.product_id
where products.id = 2 or products.id = 4 
group by(products.name);

select products.id, name, avg(stars) as avg_stars
from products join reviews 
on products.id = reviews.product_id
where products.id = 2 or products.id = 4 
group by(products.name);

select products.id, name, avg(stars) as avg_stars
from products join reviews 
on products.id = reviews.product_id
where products.id = 2 or products.id = 4 
group by(products.name);

SELECT products.id, name, AVG(stars) AS 
avg_stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
GROUP BY products.id;

SELECT products.id, name, AVG(stars) AS avg_stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
GROUP BY products.id HAVING avg_stars > 3;

SELECT products.id, products.name, AVG(stars) AS avg_stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE products.id < 6
GROUP BY products.id
HAVING avg_stars < 4;

SELECT products.id, products.name, 
AVG(stars) AS avg_stars
FROM products JOIN reviews 
ON products.id = reviews.product_id
WHERE products.id < 6
GROUP BY products.id
HAVING avg_stars < 4;