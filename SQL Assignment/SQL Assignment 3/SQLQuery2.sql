

--1
SELECT d.dept_name,e.salary ,e.emp_name FROM Employee e
join Department d
on e.dept_id=d.dept_id
join
	(select max(salary) as salary,dept_id
	from Employee e
	group by dept_id) as maximum
	on maximum.dept_id = d.dept_id AND e.salary = maximum.salary

--2
select d.dept_name from Employee e
inner join Department d
on e.dept_id = d.dept_id
group by d.dept_name having count(*)<3

--3
select d.dept_name,count(dept_name) as [working People] from Employee e
inner join Department d
on e.dept_id = d.dept_id
group by d.dept_name

--4
select d.dept_name,sum(e.salary) as [salary] from Employee e
inner join Department d
on e.dept_id = d.dept_id
group by d.dept_name
