SELECT * FROM demo;

--how many distinct on time deliverys?--
SELECT COUNT(DISTINCT order_id)
AS distinct_on_time_delivery
FROM orders
where on_time=1;

--how many distinct restaurant we have  order from?demo--
SELECT count(DISTINCT restaurant_name) 
AS distinct_restaurant
FROM orders;

--which are our fav restaurant?--demo
SELECT restaurant_name ,
COUNT(restaurant_name) as no_of_times_order
from orders
GROUP by restaurant_name
order by no_of_times_order DESC;

--what is the latest order we made?demo--
SELECT max(order_time) as Latest_Order
from orders;

--




