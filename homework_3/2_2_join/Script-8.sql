--A list of deliveries with the client's status and name.
select status, first_name, last_name
from customers c 
left join shippings s  
on c.customer_id = s.customer