--The number of clients in each country.
select c.country, count(c.country )as count
from customers c 
group by c.country 