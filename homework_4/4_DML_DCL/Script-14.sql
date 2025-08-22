-- Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
update employees
set salary = salary * 1.10
where department = 'HR';

-- Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.
update employees
set department = 'senior it'
where salary > 70000.00;

/*Удалить всех сотрудников, которые не назначены ни на один проект в
таблице EmployeeProjects.*/
delete from employees
where employeeid in (
    select e.employeeid
    from employees e
    left join employeeprojects ep on e.employeeid = ep.employeeid
    where ep.employeeid is null
);

/*Вставить новый проект и назначить на него двух существующих
сотрудников с определенным количеством HoursWorked в
EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.*/
begin;

insert into projects (projectid, projectname, startdate)
values (4, 'Digital Transformation', '2024-01-10');

insert into employeeprojects (employeeid, projectid, hoursworked)
values
    (3, 4, 26),
    (2, 4, 30);

commit;