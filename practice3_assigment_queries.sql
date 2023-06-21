select * from emp;

select round(45.9213, 2) from dual;
select trunc(45.9213, 2) from dual;
select mod(25, 5) from dual;
select mod(1600, 300) from dual;

select round(51.923, -1) from dual;

select trunc(46.923, -1) from dual;
select sal from emp;

select mod(sal, 3) from emp; 

select round(mod(sal, 3.2384), 2) from emp;

 
--DATE function 
select hiredate from emp;
select * from emp;

select ename, hiredate from emp
where hiredate > '4-May-81' ;

select * from NLS_SESSION_PARAMETERS  where PARAMETER = 'NLS_Date_Format';

select  current_date+10 from dual;

select round(current_date - hiredate, 2)  from emp;

select hiredate from emp;

select to_char(current_date, 'HH:MM:SS') from dual;

select sysdate+50/24 from dual;

select ename, sysdate - hiredate as weeks from emp;

select months_between(current_date, hiredate) from emp;

select months_between('20-oct-23', current_date)  from dual;

select add_months(current_date, 7) as months_added from dual;

select next_day(current_date, 'Sunday') as Next_day from dual;

select last_day(current_date)as last_day_of_month from dual;

select round(current_date, 'month') from dual;
select round(hiredate, 'month') from emp;
select round(current_date, 'year') from dual;
select trunc(current_date, 'year') from dual;


--practice set of class document 

--1:
select ((15.5 * sal) / 100) from emp;

select empno, ename, job, sal, sal + ((15.5 * sal) / 100) as new_salary from emp;


select empno, ename, job, sal, (sal + ((15.5 * sal) / 100)) as increased_salary,
((15.5 * sal) / 100) as bonus, 
((sal + ((15.5 * sal) / 100)) - ((15.5 * sal) / 100)) as old_salary from emp;


select 
    initcap(ename)as Name, length(ename) as Length from emp 
    where substr(ename, 1, 1) in ('J', 'A', 'M') order by ename;
    
    

    select * from emp;
define name ;
select * from emp where ename = &name;
  
select substr(ename, 1, 1) from emp;
select * from emp;


--3:
select * from emp where upper('&first_letter')  = substr(ename, 1, 1);


--practice No 6 

select ename, trunc(months_between(current_date,  hiredate), 0) as months_worked from emp order by months_worked;

select distinct ename, job from emp;

select ename, lpad(sal, 15, '$') as Salary from emp;

select rpad(substr(ename, 1, 4) , length(sal)+4, '*') as emp_name_with_their_salary from emp;

select trunc(45.923, -1) from dual;
select round(44.923, -1) from dual;

select * from emp;

select ename, trunc((current_date - hiredate)/7, 0) as tenure from emp order by tenure desc;


DEFINE nm = 'KING';
select * from emp WHERE ename = &nm;

DECLARE
  nm VARCHAR2(50) := 'KING';
BEGIN
  select * from emp where ename = nm;
END;






