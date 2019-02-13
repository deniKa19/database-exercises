use employees;


#-- Find all the employees with the same hire date as employee 101010 using a sub-query 69 rows
select first_name, last_name, hire_date
from employees
-- whatever name you put in the where has to match with the nested select
where hire_date IN(
-- select is matching the where
  select hire_date
  from employees
  where emp_no = 101010)
  limit 69;



#-- Find all the titles held by all employees with the first name Aamod, 314 total titles, 6 unique titles
select title
from titles
where emp_no IN(select emp_no
from employees
where first_name = 'Aamod');


#-- Find all the current department managers that are female.
select first_name, last_name
from employees
where emp_no IN(
select emp_no
from dept_manager
where gender = 'F' AND to_date = '9999-01-01'
);


#--Find all the department names that currently have female managers
select dept_name
from departments
where dept_no IN(
select dept_no
from dept_manager
where emp_no IN(
select emp_no
from employees
where gender = 'F' AND to_date = '9999-01-01'
));


#-- Find the first and last name of the employee with the highest salary
select first_name, last_name
from employees
where emp_no IN(
select emp_no
from salaries
where salary IN(select max(salary)
from salaries)
);

