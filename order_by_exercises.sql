use employees;


select *
from employees
where first_name IN('Irena', 'Vidya', 'Maya')
order by last_name ASC;

select *
from employees
where last_name like 'E%'
AND last_name like '%E'
order by emp_no DESC;



select *
from employees
where hire_date like '199%'
AND birth_date like '%-12-25'
order by birth_date, hire_date DESC;



select *
from employees
where last_name like '%q%'
AND last_name not like '%qu%';


select *
from employees
where first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
AND gender = 'M';