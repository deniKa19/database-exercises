use employees;


select *
from employees
where first_name IN('Irena', 'Vidya', 'Maya');

select *
from employees
where last_name like 'E%' 
AND last_name like '%E';


select *
from employees
where hire_date like '199%'
AND birth_date like '%-12-25';



select *
from employees
where last_name like '%q%'
AND last_name not like '%qu%';


select *
from employees
where first_name = 'Irena' AND gender = 'M'
OR first_name = 'Vidya' AND gender = 'M'
OR first_name = 'Maya' AND gender = 'M';



