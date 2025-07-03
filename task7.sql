use example_DB;
select * from employees;
-- 1.high salary employees table
create view high_salary_employees as select employee_id,first_name,last_name,salary from employees where salary>12000;
-- 2.View for Employees Under a Specific Manager
create view under_manager_101 as select employee_id,first_name,last_name,salary from employees where manager_id=101;
-- 3.View with Aggregation 
create view avg_salary_per_dept as select department_id,avg(salary) as average_salary from employees group by department_id;
-- 4.select of high salary employees
select * from high_salary_employees;
-- 5.select of under_manager_101
select * from under_manager_101;
-- 6.select of avg_salary_per_dept
select * from avg_salary_per_dept;
-- 7.create sample view
create view sample as select employee_id,first_name,last_name,salary from employees;
select * from sample;
SET SQL_SAFE_UPDATES = 0;
-- 8.update sample view  salary is 12000 where employee_id is 100
update sample set salary=10000 where employee_id=100;
-- 9.delete view row where salary is 10000
delete from sample where salary=10000;
-- 10.drop the views
drop view sample;

