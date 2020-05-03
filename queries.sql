select emp.emp_no,
emp.last_name,
emp.first_name,
emp.gender,
sal.salary
FROM employees as emp
	left join salaries as sal
		on (emp.emp_no = sal.emp_no)
order by emp.emp_no;

select*from employees where hire_date between '1986-01-01' and '1986-12-31';

select dm.dept_no,
d.dept_name, 
dm.emp_no,
e.last_name,
e.first_name,
dm.from_date,
dm.to_data
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join employees as e 
on (dm.emp_no = e.emp_no);

select e.emp_no, 
e.last_name,
e.first_name,
d.dept_name
from employees as e 
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
order by e.emp_no;

select*from employees where first_name = 'Hercules' and last_name like 'B%';


select e.emp_no,
e.last_name,
e.first_name, 
d.dept_name
from employees as e inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by e.emp_no;

select e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from employees as e inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name in ('Sales', 'Development')
order by e.emp_no;


select last_name, count (last_name)
from employees
group by last_name
order by count(last_name);





