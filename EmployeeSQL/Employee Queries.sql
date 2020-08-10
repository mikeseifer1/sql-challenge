--1
select employees.emp_no,
employees.first_name,
employees.last_name,
employees.sex,
salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;

--2
select employees.first_name,
employees.last_name,
employees.hire_date
from employees
where hire_date BETWEEN '$1986-01-01' AND '$1986-12-31'

--3

select departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no;

--4

select employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no;

--5

select employees.first_name,
employees.last_name,
employees.sex
from employees
where first_name = 'Hercules' and 
last_name LIKE 'B%';

--6


select employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales';

--7

select employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where (dept_name = 'Sales' or dept_name = 'Development');

--8

select count(employees.last_name),
employees.last_name
from employees
group by last_name
order by count(employees.last_name) DESC;