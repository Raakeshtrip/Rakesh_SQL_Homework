 --List the following details of each employee:
 --employee number, last name, first name, gender, and salary.
 Select e.emp_no,
 e.last_name,
 e.first_name,
 e.gender,
 s.salary
 from employees e join salary s on e.emp_no=s.emp_no
 --List employees who were hired in 1986.
Select concat(e.first_name , e.last_name) as EmployeeName,
date_part('year', e.hire_date) as Hire_Year
from employees e where date_part('year', e.hire_date)=1986
--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
Select 
dp.dept_no,
d.dept_name,
dp.emp_no,
e.last_name,
e.first_name,
dp.from_date,
dp.to_date
from employees e 
INNER JOIN  dept_manager dp ON e.emp_no=dp.emp_no
INNER JOIN departments d ON dp.dept_no=d.dept_no
--List the department of each employee 
--with the following information: employee number,
--last name, first name, and department name.

Select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e 
INNER JOIN dept_emp de ON de.emp_no=e.emp_no
INNER JOIN departments d ON de.dept_no=d.dept_no
--List all employees whose first name is 
--"Hercules" and last names begin with "B."
Select e.first_name,e.last_name,e.emp_no from employees e
where e.first_name='Hercules' and e.last_name like 'B%'
--List all employees in the Sales department, including
--their employee number, last name, first name, and department name.
Select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e JOIN dept_emp de ON e.emp_no=de.emp_no
INNER JOIN departments d ON de.dept_no=d.dept_no
where d.dept_name='Sales'
--List all employees in the Sales and Development departments, 
--including their employee number, last name, 
--first name, and department name.
Select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e JOIN dept_emp de ON e.emp_no=de.emp_no
INNER JOIN departments d ON de.dept_no=d.dept_no
where d.dept_name in ('Sales','Development')
--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

Select e.last_name,count(e.last_name) as count_of_employee_last_names
from employees e 
group by e.last_name
order by  count(e.last_name) desc


