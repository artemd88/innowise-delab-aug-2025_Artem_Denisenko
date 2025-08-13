--Search for all orders with an amount greater than 1000.
select order_id, item, amount, customer_id
from orders o 
where o.amount > 1000