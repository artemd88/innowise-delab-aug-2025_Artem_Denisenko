/*Функция: Создать функцию PostgreSQL с именем
CalculateAnnualBonus, которая принимает employee_id и
Salary в качестве входных данных и возвращает рассчитанную
сумму бонуса (10 % от Salary) для этого сотрудника. Используйте
PL/pgSQL для тела функции.*/
create or replace function calculateannualbonus(emp_id integer, emp_salary numeric)
returns numeric as $$
declare
    bonus numeric;
begin
    bonus := emp_salary * 0.10;
    return bonus;
end;
$$ language plpgsql;

/*Использовать эту функцию в операторе SELECT, чтобы увидеть
потенциальный бонус для каждого сотрудника.*/
select
    employeeid,
    firstname,
    lastname,
    salary,
    calculateannualbonus(employeeid, salary) as annual_bonus
from employees;

/*Создать представление с именем
IT_Department_View, которое показывает EmployeeID,
FirstName, LastName и Salary только для сотрудников из отдела
'IT'.*/
create or replace view it_department_view as
select
    employeeid,
    firstname,
    lastname,
    salary
from employees
where department = 'senior it' or department = 'it';

select * from it_department_view;
