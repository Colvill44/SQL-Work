insert into student value ('Will Colvill', 001, 1974, 'Computer Science');
insert into student value ('Johnny P', 002, 1974, 'Computer Science');
insert into student value ('Fred Flintstone', 003, 1974, 'Computer Science');
insert into student value ('Mike Ike', 004, 1974, 'Computer Science');
create table grade_report (
	grade VARCHAR(1) not null,
    course_number INT not null,
    section_identifier INT not null,
    student_number CHAR(9) not null
);
insert into grade_report values ('A', 3, 2215, 1);
alter table section add location VARCHAR(20);
update section s
inner join course c
on c.course_number = s.course_number
set s.location = 'BCKM 208'
where course_name = 'Databases and SQL';
alter table section
drop location;
delete from grade_report 
where student_number = 001 and section_identifier = 1 and course_number = 2215;
drop table if exists grade_report cascade;
delete from student;
