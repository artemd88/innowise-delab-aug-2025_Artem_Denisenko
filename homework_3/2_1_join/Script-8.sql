--A list of orders along with the name of the customer who placed the order.
select first_name, last_name, item, amount
from customers c 
left join orders o 
on c.customer_id = o.customer_id