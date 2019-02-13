use employees;

# -- query that shows each department along with the name of the current manager for that department
select d.dept_name as 'Department Name',
concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
join dept_manager on dept_manager.emp_no = e.emp_no
join departments as d on dept_manager.dept_no = d.dept_no
where to_date = '9999-01-01';


# -- Find the name of all departments currently managed by women.
# -- departments table to obtain the department name
# -- employees table to obtain the emplyees name
# -- dept_manager table is the associative table, has the relationship between manager and departments
select d.dept_name as 'Department Name',
concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
join dept_manager on dept_manager.emp_no = e.emp_no
join departments as d on dept_manager.dept_no = d.dept_no
# -- to_date > now() also gives you another way to find the CURRENT women working
where to_date > now() AND gender = 'F';


# -- Find the current titles of employees currently working in the Customer Service department.
select title, count(*)
from titles as t
join dept_emp as de
on de.emp_no = t.emp_no
# -- have to add the to_date = 9999-01-01 to find out the CURRENT working and CURRENT titles
# -- the d009 is the dept_no for the Customer Service
where de.to_date = '9999-01-01' AND de.dept_no = 'd009' AND t.to_date = '9999-01-01'
#-- must add the group by to not get duplicates when you use count(*)
group by title;


# -- Find the current salary of all current managers.
-- whatever is in the select that is what will be printed out on the table
select dept_name, concat(first_name, ' ', last_name) as Name, salary
--from is where you put the table that holds the information that is in the select
from departments as d
-- join will add on a different table that holds a common information as the previous table
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e
on e.emp_no = dm.emp_no
join salaries as s
on s.emp_no = dm.emp_no
where s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
group by dept_name, Name, salary;




# -- Find the names of all current employees, their department name, and their current manager's name.
select concat(first_name, ' ', last_name) as Employee_name, dept_name, concat(first_name, ' ', last_name) as manager_name
from departments as d
join dept_manager as dm on dm.dept_no = d.dept_no
join employees as e on e.emp_no = dm.emp_no
where dm.to_date = '9999-01-01'
group by Employee_name, dept_name, manager_name;













