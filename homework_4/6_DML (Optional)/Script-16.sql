-- Найти ProjectName всех проектов, в которых 'Bob Johnson' работал более 150 часов.
select p.projectname
from projects p
join employeeprojects ep on p.projectid = ep.projectid
join employees e on ep.employeeid = e.employeeid
where e.firstname = 'Bob' and e.lastname = 'Johnson' and ep.hoursworked > 150;

-- Увеличить Budget всех проектов на 10%, если к ним назначен хотя бы один сотрудник из отдела 'IT'.
update projects
set budget = budget * 1.10
where projectid in (
    select distinct ep.projectid
    from employeeprojects ep
    join employees e on ep.employeeid = e.employeeid
    where e.department = 'IT'
);

-- Проверка после обновления бюджета
select projectid, projectname, budget
from projects;

-- Для любого проекта, у которого еще нет EndDate (EndDate ISNULL), установить EndDate на один год позже его StartDate.
update projects
set enddate = startdate + interval '1 year'
where enddate is null;

-- Проверка после установки EndDate
select projectid, projectname, startdate, enddate
from projects
where enddate is not null;

/*Вставить нового сотрудника и немедленно назначить его на проект
'Website Redesign' с 80 отработанными часами, все в рамках одной
транзакции. Использовать предложение RETURNING, чтобы получить
EmployeeID вновь вставленного сотрудника*/
do $$
declare
    new_employee_id int;
begin
    insert into employees (firstname, lastname, department, salary)
    values ('Alex', 'Novak', 'Design', 55000)
    returning employeeid into new_employee_id;

    insert into employeeprojects (employeeid, projectid, hoursworked)
    values (
        new_employee_id,
        (select projectid from projects where projectname = 'Website Redesign'),
        80
    );
end $$;

-- Проверка назначения нового сотрудника
select e.firstname, e.lastname, p.projectname, ep.hoursworked
from employees e
join employeeprojects ep on e.employeeid = ep.employeeid
join projects p on ep.projectid = p.projectid
where e.firstname = 'Alex' and e.lastname = 'Novak';
