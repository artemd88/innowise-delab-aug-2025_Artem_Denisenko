--Создать новую таблицу с именем Departments
create table Departments(
	DepartmentID SERIAL PRIMARY KEY, 
	DepartmentName VARCHAR(50) not null unique, 
	Location VARCHAR(50)
	)

--Изменить таблицу Employees, добавив новый столбец с именем Email (VARCHAR(100)).
alter table employees add column Email VARCHAR(100)
	
--Добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями
update employees set email = '1@gmail.com' where employeeID = 1;
update employees set email = '2@gmail.com' where employeeID = 2;
update employees set email = '3@gmail.com' where employeeID = 3;
update employees set email = '4@gmail.com' where employeeID = 4;
update employees set email = '5@gmail.com' where employeeID = 5;
update employees set email = '6@gmail.com' where employeeID = 6;
update employees set email = '7@gmail.com' where employeeID = 7;

alter table employees 
add constraint unique_email unique (email);

--Переименовать столбец Location в таблице Departments в OfficeLocation.
alter table departments rename column Location to OfficeLocation;




