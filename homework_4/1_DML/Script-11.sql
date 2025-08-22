--Вставить двух новых сотрудников в таблицу Employees.
INSERT INTO employees (employeeid, firstname, lastname, department, salary)
VALUES 
	(6, 'Ivan', 'Budko', 'IT', 72000),
	(7, 'Valentina', 'Budko', 'Finance', 58000);

--Выбрать всех сотрудников из таблицы Employees.
select * from employees e
 

--Выбрать только FirstName и LastName сотрудников из отдела 'IT'
select e.firstname, e.lastname 
from employees e
where e.department = 'IT'

--Обновить Salary 'Alice Smith' до 65000.00
update employees e 
set salary=65000
where e.firstname ='Alice' and e.lastname='Smith'

-- Удалить сотрудника, чья LastName — 'Prince'.
delete from employeeprojects
where employeeid = 4;

delete from employees 
where lastname='Prince'

--Проверить все изменения, используя SELECT * FROM Employees;.
SELECT * FROM Employees;





