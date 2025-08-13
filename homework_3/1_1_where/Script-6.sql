--Finding all clients from the "USA" country over the age of 25.
select first_name, last_name, age, country
from  customers c 
where c.age > 25 and c.country like '%US%'