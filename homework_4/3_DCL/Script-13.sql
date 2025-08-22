--Создать нового пользователя с именем hr_user и простым паролем
create role hr_user with login password '222';

--Предоставить пользователю hr_user право select на таблицу employees
grant select on employees to hr_user;

--Подключиться как hr_user и выполнить select * from employees
select * from employees;

--Попытаться выполнить insert от имени hr_user
INSERT INTO employees (employeeid, firstname, lastname, department, salary)
VALUES 
	(8, 'Ivan', 'Budko1', 'IT', 71000);

--Предоставить пользователю hr_user права insert и update на таблицу employees
grant insert, update on employees to hr_user;

--Выполнить insert и update от имени hr_user
INSERT INTO employees (employeeid, firstname, lastname, department, salary)
VALUES 
	(8, 'Ivan', 'Budko1', 'IT', 71000);

update employees set email = '8@gmail.com' where employeeID = 8;