select product_code, product_name, list_price, discount_percent
from products;

select product_code, product_name, list_price, discount_percent
from products
order by list_price desc;

select product_name, list_price, date_added
from products
where list_price > 500 and list_price < 2000
order by date_added desc;

select category_name, product_name, list_price
from products join categories
on categories.category_id=products.category_id
order by category_name, product_name asc;

select order_id, order_date, ship_date
from orders
where ship_date is null;

select concat(first_name, ' ', last_name) as full_name, order_date
from customers join orders
on customers.customer_id = orders.customer_id
where month(order_date) = 4 and year(order_date) = 2015;

select max(list_price), product_name, category_name
from products join categories
on products.category_id = categories.category_id;

select order_date, state, first_name, last_name
from customers join addresses join orders
on customers.customer_id = addresses.customer_id = orders.customer_id
where (state = 'NJ' or state = 'NY') and year(order_date) = 2015;

select state, sum(tax_amount)
from addresses join orders on addresses.address_id = orders.billing_address_id
where state = 'NJ';

select state, sum(ship_amount)
from addresses join orders on orders.ship_address_id = addresses.address_id
group by state;