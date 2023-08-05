SELECT d.dept_name, count(e.emp_no) as " # of employees"
from employees as e
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on de.dept_no = d.ddept_no
where e.gender = 'M'
group by d.dept_name
having count (e.emp_no) > 25000
