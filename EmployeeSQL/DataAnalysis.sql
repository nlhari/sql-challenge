--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary from employees as e
inner join salaries as s
on e.emp_no = s.emp_no

--2. List employees who were hired in 1986.

select * from employees where hire_date > '1985-12-31' and hire_date < '1987-01-01'

--3. List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name, and start and 
-- end employment dates.

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from dept_manager as dm
inner join departments as d on d.dept_no = dm.dept_no
inner join employees as e on dm.emp_no = e.emp_no

--4. List the department of each employee with the following information: employee number,
-- last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no
order by e.emp_no asc

--5. List all employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name from employees
where first_name = 'Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, 
-- first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

--8. In descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.

select last_name, count(last_name) as "Total Last Name Count" from employees
group by last_name
order by last_name desc
