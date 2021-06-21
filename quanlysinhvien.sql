select *
from student
where StudentName like 'h%';
select *
from class
where StartDate like '%-12-%';
select *
from subject
where Credit BETWEEN 3 AND 5;
UPDATE student
set classId = 1
where StudentName ='Hung';
use quanlysinhvien;
select s.StudentName, o.SubName, m.Mark
from student s, subject o, mark m
where o.SubID = m.SubID and s.StudentID = m.StudentID
order by  Mark DESC, StudentName ASC;