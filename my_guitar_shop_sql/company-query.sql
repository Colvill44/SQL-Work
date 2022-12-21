select fname, lname
from employee
where fname like 'A%' and lname like 'J%'
union
select 'Will' as fname, 'Colvill' as lname;

select employee.fname, employee.lname, employee.salary
from employee
where dno = 7
union
select 'Will' as fname, 'Colvill' as lname, null as salary;

select employee.fname, employee.lname, employee.salary
from employee join works_on on employee.ssn = works_on.essn
where works_on.pno = 1
union
select 'Will' as fname, 'Colvill' as lname, null as salary;

select sum(salary) as Total_Salaries, sum(salary)*.05 as Total_401k
from employee
union
select 'Will' as Total_Salaries, 'Colvill' as Total_401k;

select sum(hours) as Total_Hours
from works_on
where pno = 1
union
select 'Will Colvill' as Total_Hours;

select fname, lname, max(salary)
from employee
where sex = 'F'
union
select 'Will' as fname, 'Colvill' as lname, null as salary;