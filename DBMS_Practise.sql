--update student set DOB = '12-JAN-2023';
--alter table student add budget decimal(10, 2);
--update student set email_no = NULL where id = 3;
--select max(salary), min(salary), avg(salary), sum(salary) from student;
--select max(marks), min(marks), avg(marks), sum(marks) from student;
--select count(*) from employee where salary > 5000;
--select count(distinct dept) from student;
--delete from student where salary = 5000;
--insert into student values (6, 'Sohaib', 'saeed', 23, 'IT', 69, 'IMS', 'Sohaib56@gmail.com', '3-JAN-2022', 5900);
--select NVl(avg(budget), 0) from student; if there is nothing they will reterun zero instead of NULL;
--select institute_name, avg(salary) from student GROUP By institute_name; this will create a group of different institute name;
select * from student;
--select dept, max(salary) from student GROUP By dept order BY dept ASC;
select F_name, count(F_name) from student;

------------------ Connecting two tables -------------------------
--CREATE TABLE Student (
--  student_id INT PRIMARY KEY,
--  student_name VARCHAR(50),
--  student_age INT,
--  student_gender VARCHAR(10)
--);
---------------------- Putting record in them --------------------
--INSERT INTO Student VALUES (1, 'Adnan', 20, 'Male');
--INSERT INTO Student VALUES (2, 'Amna', 22, 'Female');
--INSERT INTO Student VALUES (3, 'Haseeb', 19, 'Male');
--INSERT INTO Student VALUES (4, 'Sadia', 21, 'Female');
--INSERT INTO Student VALUES (5, 'Hamid', 18, 'Male');
----------------------- Creating another table to join with first ----------------
--CREATE TABLE Course (
--  course_id INT PRIMARY KEY,
--  course_name VARCHAR(50),
--  course_credit INT,
--  course_instructor VARCHAR(50),
--  student_id INT,
--  FOREIGN KEY (student_id) REFERENCES Student(student_id)
--);
-------------------------- Inert record in second table ------------------
--INSERT INTO Course VALUES (1, 'Mathematics', 4, 'Afsheen', 1);
--INSERT INTO Course VALUES  (2, 'Programing', 3, 'Adnan Amin', 2);
--INSERT INTO Course VALUES  (3, 'Computer Science', 5, 'Zahid', 3);
--INSERT INTO Course VALUES  (4, 'OOAD', 4, 'Sajid Anwar', 4);
--INSERT INTO Course VALUES  (5, 'ICT', 3, 'Somaira', 5);
--INSERT INTO Course VALUES  (6, 'Operating System', 4, 'Kasir', 1);
--INSERT INTO Course VALUES  (7, 'Database', 4, 'Inam', 3);
-------------------- Getting filter record from the table ---------------
--SELECT s.student_id, s.student_name, s.student_age, c.course_name, s.student_gender
--FROM Student s
--JOIN Course c ON s.student_id = c.student_id
--WHERE s.student_age > 20 AND s.student_gender= 'Female';
-------------- Creating third table to connect with course and student table ---------
--CREATE TABLE exam_detail (
--  exam_id INT PRIMARY KEY,
--  student_id INT,
--  course_id INT,
--  exam_date DATE,
--  exam_score INT,
--  FOREIGN KEY (student_id) REFERENCES Student(student_id),
--  FOREIGN KEY (course_id) REFERENCES Course(course_id)
--);

-------------------------- inserting record in the table -------------
--INSERT INTO exam_detail VALUES (1, 1, 1, TO_DATE('10-APR-2023', 'DD-MON-YYYY'), 85);
--INSERT INTO exam_detail VALUES (2, 2, 2, TO_DATE('12-APR-2023', 'DD-MON-YYYY'), 92);
--INSERT INTO exam_detail VALUES (3, 3, 3, TO_DATE('14-APR-2023', 'DD-MON-YYYY'), 78);
--INSERT INTO exam_detail VALUES (4, 4, 4, TO_DATE('16-APR-2023', 'DD-MON-YYYY'), 88);
--INSERT INTO exam_detail VALUES (5, 5, 5, TO_DATE('18-APR-2023', 'DD-MON-YYYY'), 95);
--INSERT INTO exam_detail VALUES (6, 1, 2, TO_DATE('20-APR-2023', 'DD-MON-YYYY'), 90);
--INSERT INTO exam_detail VALUES (7, 3, 4, TO_DATE('22-APR-2023', 'DD-MON-YYYY'), 83);
------------------ Getting full record from these tables -----------------------
--SELECT *
--FROM exam_detail
--JOIN student ON exam_detail.student_id = student.student_id
--JOIN course ON exam_detail.course_id = course.course_id;
--------------- Getting filter record from these table ----------------------------

--SELECT exam_detail.exam_id, student.student_name, course.course_name, exam_detail.exam_score
--FROM exam_detail
--JOIN student ON exam_detail.student_id = student.student_id
--JOIN course ON exam_detail.course_id = course.course_id
--WHERE student.student_age > 20 AND course.course_credit >= 3;





