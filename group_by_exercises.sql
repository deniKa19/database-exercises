use titles;
use employees;

select distinct title
from titles

select distinct first_name, last_name
from employees
where last_name like 'E%'
AND last_name like '%E'
group by first_name, last_name;

select distinct last_name
from employees
where last_name like '%q%'
AND last_name not like '%qu%';

select distinct first_name, count(*)
from employees
group by first_name
order by first_name;



select gender, count(*)
from employees
where first_name IN('Irena', 'Vidya', 'Maya')
group by gender;

