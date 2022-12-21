select max(gpa) as Max, min(gpa) as Min
from Student s join Apply a on s.sID = a.sID
where major = 'CS';

select max(gpa) - min(gpa) as Spread
from Student s join Apply a on s.sID = a.sID
where major = 'CS';

select sName, cName, major, min(gpa), max(gpa)
from Student s join Apply a on s.sID = a.sID
group by cName, major;

select state, sum(enrollment)
from college
group by state;

select avg(gpa) as Average_GPA
from Student s join Apply a on s.sID = a.sID
where major = 'CS';

select distinct (select avg(GPA) as avgGPA from Student
        where sID in (
           select sID from Apply where major = 'CS')) -
       (select avg(GPA) as avgGPA from Student
        where sID not in (
           select sID from Apply where major = 'CS')) as d
from Student;

select count(*)
from Student;

SELECT COUNT(DISTINCT sID) FROM Apply
WHERE cName LIKE 'Cornell';

select sid, count(distinct cname)
from Apply
group by sid;

select sname, s.sid, count(distinct cname)
from Apply a join Student s on a.sid = s.sid
group by sname;

select cname
from apply
where count(distinct cname) < 5;

Select cName
from Apply
Group By cName
having count(*) < 5;

SELECT * FROM Student;

      Insert into Student values (432, 'Kevin', null, 1500);
      Insert into Student values (321, 'Lori', null, 2500);

      SELECT * FROM Student;
      
SELECT count(*)
       FROM Student;
       
SELECT count(GPA)
       FROM Student;

SET SQL_SAFE_UPDATES = 0;
       DELETE FROM Student WHERE GPA is null;