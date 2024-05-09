-- Assessment Ouestion 1
use rhydham;
create table worker(
worker_id int primary key,
first_name varchar(225),
last_name varchar(225),
salary decimal(8,2),
joining_date date,
department varchar(225));

insert into worker (worker_id,first_name,last_name,salary,joining_date,department)
values
(1,'monika','arora',10000,'2013-3-3','hr'),
(2,'niharika','verma',8000,'2014-11-6','admin'),
(3,'vishal','singhal',30000,'2014-2-20','hr'),
(4,'amitabh','singh',50000,'2014-2-20','admin'),
(5,'vivek','bhati',50000,'2014-11-4','admin'),
(6,'vipul','diwan',20000,'2014-2-20','account'),
(7,'satish','kumar',7500,'2014-1-2','account'),
(8,'geetika','chauhan',90000,'2014-11-4','admin');

-- 1.  Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- Ascending and DEPARTMENT Descending. 
select * from worker order by first_name, department desc;

-- 2. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
-- from the Worker table. 
select * from worker;
select * from worker where first_name = 'Vipul' or first_name = 'Satish';

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
-- contains six alphabets. 
select * from worker where first_name like '_____h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 2000 and 10000. 
select * from worker where salary between 2000 and 10000;

-- 5.Write an SQL query to fetch duplicate records having matching data in some fields of a table. 


-- 6. Write an SQL query to show the top 6 records of a table. 
select * from employees limit 6 offset 0;

-- 7.Write an SQL query to fetch the departments that have less than five people in them. 
select * from worker where department < 5 ; 

-- 8. Write an SQL query to show all departments along with the number of people in there. 
select department , count(first_name) from worker group by department ;

-- 9. Write an SQL query to print the name of employees having the highest salary in each
-- department.
select first_name , MAX(salary) , department from worker where salary = MAX(salary) group by department;


-- ASSESSMENT QUESTION -2
CREATE TABLE Students (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(255),
    Sex VARCHAR(10),
    Percentage INT,
    Class VARCHAR(10),
    Sec VARCHAR(5),
    Stream VARCHAR(50),
    DOB DATE
);

INSERT INTO Students (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB) VALUES
(1001, 'Surekha Joshi', 'Female', 82, '12', 'A', 'Science', '1998-03-08'),
(1002, 'MAAHI AGRAWAL', 'Female', 56, '12','A', 'Science', '2006-11-23'),
(1003, 'Sanam Verma', 'Male', 59, '11','C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, '11','C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, '11','B', 'Commerce', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 60, '11','B', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 23, '12','F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 56, '11','C', 'Commerce', '2008-11-07'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, '12','B', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 39, '11','F', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 42, '11','C', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 49, '12','C', 'Commerce', '1998-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, '12','A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, '12','A', 'Science', '2008-11-23');

select * from students;

-- 1.To display all the records form STUDENT table. SELECT * FROM student 
select * from students;

-- 2.To display any name and date of birth from the table STUDENT. SELECT StdName, DOB
-- FROM student ; 
select stdname , dob from students;

-- 3.To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM students WHERE percentage >= 80; 

-- 4.To display student name, stream and percentage where percentage of student is more than 80 
SELECT StdName, Stream, Percentage from students WHERE percentage > 80; 

-- 5. To display all records of science students whose percentage is more than 75 form student table. 
SELECT * from students WHERE stream = 'science' AND percentage > 75; 



