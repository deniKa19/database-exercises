use employees;



select distinct last_name
from employees
order by last_name DESC
LIMIT 10;

select distinct *
from employees
where hire_date like '199%'
AND birth_date like '%-12-25'
order by birth_date, hire_date DESC
limit 5;


select distinct *
from employees
where hire_date like '199%'
AND birth_date like '%-12-25'
order by birth_date, hire_date DESC
limit 5 offset 45;
