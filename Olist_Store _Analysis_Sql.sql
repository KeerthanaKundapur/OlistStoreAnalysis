use project_4;
select * from olist_orders_dataset;
select * from olist_customers_dataset;
select * from olist_order_reviews_dataset;
select * from olist_order_payments_dataset;
select * from olist_order_items_dataset;
select * from olist_products_dataset;
select * from olist_sellers_dataset;
select * from product_category_name_translati;
select * from olist_geolocation_dataset;


/* 1) Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics */

select case when weekday(a.order_purchase_timestamp)=5 or weekday(a.order_purchase_timestamp)=6  then "weekend"
else "weekday" end as daystatus,sum(b.payment_value)as payment_statistics from olist_orders_dataset a join olist_order_payments_dataset b on a.order_id=b.order_id group by daystatus;

/* 2) Number of Orders with review score 5 and payment type as credit card. */

select count(a.order_id) as orders,a.review_score,b.payment_type from olist_order_reviews_dataset a join olist_order_payments_dataset b on a.order_id=b.order_id 
where a.review_score=5 and b.payment_type=' credit_card ';

/* 3) Average number of days taken for order_delivered_customer_date for pet_shop */ 

select avg(days) from(
select datediff(a.order_delivered_customer_date,a.order_purchase_timestamp) as days ,c.product_category_name
from olist_orders_dataset a join olist_order_items_dataset b join  olist_products_dataset c on a.order_id=b.order_id and b.product_id=c.product_id
where c.product_category_name=' pet_shop 'group by a.customer_id,c.product_category_name)as dsdff;

/* 4) Average price and payment values from customers of sao paulo city */

select avg(a.price)as avg_price,avg(b.payment_value)as avg_paymentvalue,c.customer_city from olist_orders_dataset d join olist_customers_dataset c join olist_order_payments_dataset b join olist_order_items_dataset a 
on d.customer_id=c.customer_id and d.order_id=b.order_id and d.order_id=a.order_id where c.customer_city = ' sao paulo ';

/* 5) Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores. */

select  b.review_score ,datediff(order_delivered_customer_date,order_purchase_timestamp) as shippingdays from olist_orders_dataset a join olist_order_reviews_dataset b 
on a.order_id=b.order_id group by shippingdays ;