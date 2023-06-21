select last_name, salary from hr_employees where salary> 10000;
select  distinct(department_id), last_name from hr_employees;
select last_name, job_id, hire_date from hr_employees 
where last_name = 'King' or last_name = 'Austin' order by hire_date Desc;
select last_name, department_id from hr_employees
where department_id = 90 or department_id = 80 order by last_name ASC;
select last_name as Employee, salary As Monthly_Salary from hr_employees;
where department_id = 80 or department_id = 90 and salary between 6000 and 17000;
select last_name, hire_date from hr_employees where hire_date  = '17-JUN-03';
select last_name, job_id from hr_employees where manager_id is Null;
select * from hr_employees;
