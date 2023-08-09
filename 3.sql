-- The Student table consists of Student_ID, Stu_Name, Stu_Subject_ID, Stu_Marks, and Stu_Age columns, and the Subject table consists of Subject_ID and Subject_Name columns.

-- create table student (student_id int , stu_name varchar(20) , stu_subject_id varchar(20) , stu_marks int , stu_age int );
-- Query 1: create table subject( subject_id varchar(20) , subject_name varchar(20) );
-- Query 2 : Insert the following data into the table.
-- Student table data
-- Student_ID	Stu_Name	Stu_Subject_ID	Stu_Marks	Stu_Age
-- 101	Akhil	BCA101	85	20
-- 102	Balram	BCA104	78	19
-- 103	Bheem	BCA102	80	22
-- 104	Chetan	BCA103	95	20
-- 105	Diksha	BCA104	99	20
-- 106	Raman	BCA105	88	19
-- 107	Sheetal	BCA103	98	22


-- Command to insert the data in student table.

-- insert student values(101,'Akhil','BCA101',85,20);
-- insert student values(102,'Balram','BCA104',78,19);
-- insert student values(103,'Bheem','BCA102',80,22);
-- insert student values(104,'chetan','BCA103',95,20);
-- insert student values(105,'Diksha','BCA104',99,20);
-- insert student values(106,'Raman','BCA105',88,19);
-- insert student values(107,'Sheetal','BCA103',98,22);


-- Course table data
-- Subject_ID	Subject_Name
-- BCA101	C
-- BCA102	C++
-- BCA103	Principle of Management
-- BCA104	Core Java
-- BCA105	Math
-- BCA106	Android

-- command to insert data in course table.

-- insert subject values('BCA101','C');
-- insert subject values('BCA102','c++');
-- insert subject values('BCA103','Principle of Management');
-- insert subject values('BCA104','Core Java');
-- insert subject values('BCA105','Math');
-- insert subject values('BCA106','Android');

-- Query 3: Write a query to view the specific record of the table by using the WHERE clause.

-- select * from student where stu_age=20;
-- select  * from student where stu_subject_id='BCA103' or stu_subject_id=’BCA106’;

-- Query 4: Write a query in SQL to find the minimum and maximum marks

-- select max(stu_marks) as maximum_marks,min(stu_marks) as minimum_marks from student;

-- Query : 5 Write a query in SQL to retrieve only even rows from the table?

-- SELECT * FROM student WHERE MOD (student_id,2) = 0 ;  

-- Query 6: Write a query in SQL to create a new table with the same data and structure as an existing     table.

-- create table temp(select * from student);

-- Query 7: Write a query in SQL to find the second-highest marks from the table?

-- select max(stu_marks) from student where stu_marks<(select max(stu_marks) from student);
-- select max(stu_marks) from student where stu_marks not in(select max(stu_marks) from student);
-- select max(stu_marks) from student where stu_marks !=(select max(stu_marks) from student);

-- Query 8:SQL query to fetch the Stu_Name and Stu_Marks of those students whose age is 20.

-- select stu_name,stu_marks from student where stu_age=20;

-- Query 9: Write a query to show the maximum marks of each subject.

-- select stu_subject_id,max(stu_marks) from student group by stu_subject_id;

-- Query 10: Write a query to show all the record of those students whose Marks is greater than 82 and age is 22

-- select * from student where stu_marks > 82 and stu_age = 22;

-- Query 11: Write a query to show the record of those students whose name begins with the 'm' character.

--     select * from student where stu_name like '%m';

-- Query 12: Write a query to show all Subject_ID along with the number of students in there. 

--     select stu_subject_id,count(stu_subject_id) as student from student group by stu_subject_id;

-- Query 13: Write a query in SQL to show the three minimum
--         values of the integer column from the table.

--         select distinct(stu_marks) from student order by stu_marks asc limit 3;

-- Query 14: Write a query to show the average marks of the students.

--         select avg(stu_marks) as average_marks from student;

-- Query 15: Write a query to create a View in Structured Query Language,

--     create view fail as select stu_name,stu_marks from student where stu_m
--     arks <85;

--     select * from fail;

-- Query 16: Write a Query to add another column in the existing table:

--        	 alter table student add stu_address varchar(20);

-- Query 17:Write the SQL query to get the third maximum marks

--     select stu_marks from student order by stu_marks desc limit 1 OFFSET 2;

-- practice (correct as well as incorrect)
-- select substring(stu_name,1,4),stu_subject_id,stu_age 
-- from student group by stu_subject_id 
-- order by stu_age limit 2,10;

-- select (sum(student_id)/2) from student;

-- Query 26: Write a query in SQL to show the three minimum
--         values of the integer column from the table.


--         select distinct(stu_marks) from student order by stu_marks asc limit 3;



-- +------------+----------+----------------+-----------+---------+
-- | student_id | stu_name | stu_subject_id | stu_marks | stu_age |
-- +------------+----------+----------------+-----------+---------+
-- |        101 | Akhil    | BCA101         |        85 |      20 |
-- |        102 | Balram   | BCA104         |        78 |      19 |
-- |        103 | Bheem    | BCA102         |        80 |      22 |
-- |        104 | chetan   | BCA103         |        95 |      20 |
-- |        105 | Diksha   | BCA104         |        99 |      20 |
-- |        106 | Raman    | BCA105         |        88 |      19 |
-- |        107 | Sheetal  | BCA103         |        98 |      22 |
-- +------------+----------+----------------+-----------+---------+

-- Query 29: Write a Query to add another column in the existing table:

--         alter table student add stu_address varchar(20);
-- select stu_name,stu_marks from student order by stu_marks desc l
-- imit 1 offset 2;


-- select stu_marks from student order by stu_marks desc limit 1 OFFSET 2;

-- Query 29:Write the SQL query to get the third maximum marks

--     select stu_marks from student order by stu_marks desc limit 1 OFFSET 2;
    
    
--     select student_id from student where 3 
--     =count(select student_id from student);
    
--     select student_id from student
--     where 3= count(student_id) from student;
    
--     select student_id percent(10) from student;
    
-- SELECT TOP (50) PERCENT 
-- FROM (
--         SELECT TOP (20) PERCENT 
--                       student_id
--         FROM student
--         ORDER BY student_id DESC
--      )
-- ORDER BY student_id ASC;

-- alter table student add rownum int;
-- alter table student MODIFY rownum,rownum int AUTO_INCREMENT;

-- alter table student MODIFY rownum int AUTO_INCREMENT;
    
    
-- create table temp (
--     rownum int PRIMARY KEY AUTO_INCREMENT,
--     name varchar(20)
-- );
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');
-- insert into temp(name) values('chetan');insert into temp(name) values('chetan');

-- select name  where rownum = (convert(count(rownum)/2) from temp);
-- select name,count(rownum) from temp;

-- Joins problems 
-- CREATE TABLE Student (      
--   id int PRIMARY KEY ,     
--   admission_no varchar(45) NOT NULL,  
--   first_name varchar(45) NOT NULL,      
--   last_name varchar(45) NOT NULL,  
--   age int,  
--   city varchar(25) NOT NULL      
-- );    
  
-- CREATE TABLE Fee (   
--   admission_no varchar(45) NOT NULL,  
--   course varchar(45) NOT NULL,      
--   amount_paid int   
-- );  
-- INSERT INTO Student (admission_no, first_name, last_name, age, city)       
-- VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
-- (2135, 'Paul', 'Ward', 15, 'Alaska'),       
-- (4321, 'Peter', 'Bennett', 14, 'California'),    
-- (4213,'Carlos', 'Patterson', 17, 'New York'),       
-- (5112, 'Rose', 'Huges', 16, 'Florida'),  
-- (6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
-- (7555,'Antonio', 'Butler', 14, 'New York'),       
-- (8345, 'Diego', 'Cox', 13, 'California');  

-- INSERT INTO Fee (admission_no, course, amount_paid)       
-- VALUES (3354,'Java', 20000),       
-- (7555, 'Android', 22000),       
-- (4321, 'Python', 18000),    
-- (8345,'SQL', 15000),       
-- (5112, 'Machine Learning', 30000);  

-- select Student.admission_no,Student.first_name,
-- Fee.course,Fee.amount_paid from Student INNER JOIN Fee
-- ON Student.admission_no = Fee.admission_no;

-- select Student.admission_no,Student.first_name,
-- Fee.course,Fee.amount_paid from Student LEFT JOIN Fee
-- ON Student.admission_no=Fee.admission_no;

-- select Student.admission_no,Student.first_name,
-- Fee.course,Fee.amount_paid from Student Right JOIN Fee
-- ON Student.admission_no=Fee.admission_no;

-- select Student.admission_no,Student.first_name,
-- Fee.course,Fee.amount_paid from Student CROSS JOIN Fee
-- ON Student.admission_no=Fee.admission_no;

-- select Student.admission_no,Student.first_name
--  from Student CROSS JOIN Fee
-- ON Student.admission_no=Fee.admission_no;
