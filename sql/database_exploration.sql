select column_name, data_type
from information_schema.columns
where table_name = 'customer'
order by ordinal_position;

select count(*) as total_rows, count(distinct customer_id) as distinct_customers
from customer;

select * from customer order by customer_id limit 10;

select min(age) as youngest, max(age) as oldest, avg(age) as avg_age,
       min(purchase_amount) as min_amount, max(purchase_amount) as max_amount,
       avg(purchase_amount) as avg_amount, avg(review_rating) as avg_rating
from customer;

select count(*) as missing_ratings
from customer
where review_rating is null;

select gender, count(*) as customers
from customer
group by gender;

select category, count(*) as customers
from customer
group by category
order by customers desc;

select subscription_status, count(*) as customers
from customer
group by subscription_status;
