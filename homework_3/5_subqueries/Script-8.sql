--Search for all customers who have placed an order with the maximum amount.
select c.first_name, c.last_name, o.amount
from customers c
left join orders o 
on c.customer_id = o.customer_id
where o.amount=(
	select max(amount)
	from orders o)
