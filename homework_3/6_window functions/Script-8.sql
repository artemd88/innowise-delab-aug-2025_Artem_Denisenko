--For each order, add a column with the sum of all the orders of this customer.
select o.order_id, o.customer_id, o.item, o.amount, sum(amount) over(partition by o.customer_id ) as total_by_customer
from orders o

