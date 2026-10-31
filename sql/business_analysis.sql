select gender, count(*) as customers, sum(purchase_amount) as revenue, avg(purchase_amount) as avg_purchase
from customer
group by gender
order by revenue desc;

select case when purchase_amount >= 74 then 'High'
            when purchase_amount >= 45 then 'Medium'
            else 'Low' end as spend_level,
       count(*) as customers, sum(purchase_amount) as revenue
from customer
group by spend_level
order by revenue desc;

select category, count(*) as purchases, sum(purchase_amount) as revenue, avg(purchase_amount) as avg_purchase
from customer
group by category
order by revenue desc;

select subscription_status, count(*) as customers, sum(purchase_amount) as revenue, avg(purchase_amount) as avg_purchase
from customer
group by subscription_status;

select discount_applied, count(*) as customers, avg(purchase_amount) as avg_purchase
from customer
group by discount_applied;

select category, sum(case when discount_applied = 'Yes' then 1 else 0 end) * 100.0 / count(*) as percent_discounted
from customer
group by category
order by percent_discounted desc;

select age_group, min(age) as youngest, max(age) as oldest, count(*) as customers,
       sum(purchase_amount) as revenue, avg(purchase_amount) as avg_purchase
from customer
group by age_group
order by youngest;

select frequency_of_purchases, purchase_frequency_days, count(*) as customers, avg(purchase_amount) as avg_purchase
from customer
group by frequency_of_purchases, purchase_frequency_days
order by purchase_frequency_days;

select age_group, avg(purchase_frequency_days) as avg_days_between_purchases
from customer
group by age_group
order by min(age);

select category, avg(review_rating) as avg_rating
from customer
group by category
order by avg_rating desc;

select item_purchased, avg(review_rating) as avg_rating, count(*) as orders
from customer
group by item_purchased
having count(*) >= 30
order by avg_rating desc
limit 10;

select shipping_type, count(*) as customers, sum(purchase_amount) as revenue, avg(purchase_amount) as avg_purchase
from customer
group by shipping_type
order by revenue desc;

select payment_method, count(*) as customers, sum(purchase_amount) as revenue, avg(purchase_amount) as avg_purchase
from customer
group by payment_method
order by revenue desc;

select case when previous_purchases = 1 then 'First purchase' else 'Repeat' end as customer_type,
       count(*) as customers, sum(purchase_amount) as revenue
from customer
group by customer_type
order by customers desc;
