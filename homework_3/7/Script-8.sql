select concat(c.first_name,' ',c.last_name ) as full_name,c.country, count(o.order_id) as total_orders, sum(o.amount) as total_amount
from customers c
left join orders o 
on c.customer_id = o.customer_id
where 1<=( --Have at least one delivery with the status 'Delivered'.
	select s.shipping_id
	from shippings s
	where s.customer = c.customer_id and s.status ='Delivered')
group by c.first_name, c.last_name, c.country
having count(o.order_id)>=2 --Have made at least 2 orders (any kind).