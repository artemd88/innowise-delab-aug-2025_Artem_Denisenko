--The total number of orders and the average amount for each product.
select o.item, count(o.item )as count, round(avg(o.amount),2) as avg_amount
from orders o 
group by o.item 