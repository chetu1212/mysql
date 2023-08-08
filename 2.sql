-- CREATE TABLE employeeinfo(empid int,empfname VARCHAR(20),
-- emplname VARCHAR(20),department varchar(20),project VARCHAR(20),address VARCHAR(20),
-- dob date,gender VARCHAR(5));

-- desc employeeinfo;

-- INSERT INTO employeeinfo VALUES(1,'Sanjay','Mehra','HR','P1',
-- "Hyderabad(HYD)",str_to_date('07-25-2012','%m-%d-%Y'),'M');

-- SELECT * from employeeinfo;

-- INSERT INTO employeeinfo VALUES(2,'Ananya','Mishra','Admin','P2',
-- "Delhi(DEL)",str_to_date('02-05-1968','%m-%d-%Y'),'F'),(3,'Rohan','Diwan','Account','P3',
-- "Mumbai(BOM)",str_to_date('01-01-1980','%m-%d-%Y'),'M');

-- INSERT INTO employeeinfo VALUES(4,'Soniya','Kulkarni','HR','P1',
-- "Hyderabad(HYD)",str_to_date('02-05-1992','%m-%d-%Y'),'F'),(5,'Ankit','Kapoor','Admin','P2',
-- "Delhi(DEL)",str_to_date('03-07-1994','%m-%d-%Y'),'M');

-- select * from employeeinfo;

-- CREATE TABLE empposition(empid INT,emppos VARCHAR(20),join_date date,salary int);

-- INSERT INTO empposition VALUES(1,'Manager',str_to_date('01-05-2022','%m-%d-%Y'),500000);

-- INSERT INTO empposition VALUES(2,'Executive',str_to_date('02-05-2022','%m-%d-%Y'),75000),
-- (3,'Manager',str_to_date('01-05-2022','%m-%d-%Y'),90000),(2,'Lead',str_to_date('02-05-2022','%m-%d-%Y'),85000),
-- (1,'Executive',str_to_date('01-05-2022','%m-%d-%Y'),300000);

-- SELECT *  from empposition;
-- _____________________________________________________________________________________________________________________________
-- _____________________________________________________________________________________________________________________________
-- Q1. Write a query to fetch the EmpFname from the EmployeeInfo table in 
-- the upper case and use the ALIAS name as EmpName.

-- SELECT UPPER(empfname)  as EmpName from employeeinfo;

-- Q2. Write a query to fetch 
-- the number of employees working in the department ‘HR’.

-- SELECT count(empfname) from employeeinfo WHERE department='HR';

-- Q3. Write a query to retrieve the first four characters of  
-- EmpLname from the EmployeeInfo table.

-- SELECT substring(emplname,1,4) from employeeinfo;


-- Q4.  Write a query to create a new table that consists of data 
-- and structure copied from the other table.

-- CREATE TABLE temp (SELECT * from employeeinfo);

-- select * from temp;

-- Q5. Write q query to find all the employees 
-- whose salary is between 50000 to 100000.

-- SELECT emppos FROM empposition WHERE salary BETWEEN 50000 AND 100000;

-- SELECT employeeinfo.empfname,empposition.salary 
-- from employeeinfo JOIN empposition ON employeeinfo.empid=empposition.empid 
-- WHERE empposition.salary BETWEEN 50000 AND 100000;

-- Q6. Write a query to find the names of employees that begin with ‘S’

-- select * from employeeinfo WHERE empfname like 'S%';

-- Q7. Write a query to fetch top N records.

-- select * from empposition ORDER BY salary LIMIT 3;

-- Q8. Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name 
-- and the last name must be separated with space.

-- select concat(empfname,' ',emplname)  from employeeinfo;

-- Q9. Write a query find number of employees 
-- whose DOB is between 02/05/1970 to
--  31/12/1975 and are grouped according to gender

-- select count(*),gender from employeeinfo
--  where dob BETWEEN '1950-05-02' AND '1990-12-31' GROUP BY gender;

-- Q10. Write a query to fetch all the records from the
--  EmployeeInfo table ordered by EmpLname in 
-- descending order and Department in the ascending order.

-- select * from employeeinfo ORDER BY emplname DESC,
--  department asc;

-- Q11. Write a query to fetch details of employees
--  whose EmpLname ends with an 
-- alphabet ‘A’ and contains six alphabets.

-- SELECT * FROM employeeinfo WHERE empfname like '_____a';

-- Q12. Write a query to fetch details of all employees 
-- excluding the employees with first names,
--  “Sanjay” and “Sonia” from the EmployeeInfo table.

-- select * from employeeinfo WHERE empfname NOT IN ('Sanjay','Soniya');
-- Write a query to fetch details of employees with the address as “DELHI(DEL)”.

-- select * from employeeinfo WHERE address like 'DELHI(DEL)%';

-- Q13. Write a query to fetch 
-- all employees who also hold the managerial position.

-- SELECT e.empfname,e.empid,p.emppos from employeeinfo e
--  INNER JOIN empposition p ON e.empid=p.empid AND p.emppos IN ('Manager');

-- Q14. Write a query to fetch the department-wise count of employees 
-- sorted by department’s count in ascending order.

-- select count(*),department from employeeinfo GROUP BY department
--  ORDER BY count(*) ASC;

-- Q15. Write a SQL query to retrieve employee details from EmployeeInfo table who have a
--  date of joining in the EmployeePosition table.

-- SELECT * from employeeinfo WHERE EXISTS (SELECT * from empposition
--  WHERE employeeinfo.empid=empposition.empid);

-- Q16. Write a query to retrieve two minimum and 
-- maximum salaries from the EmployeePosition table.

-- select salary from empposition ORDER BY salary DESC LIMIT 2;

-- Q17. Write a query to retrieve duplicate records from a table.

-- SELECT department,count(*) from employeeinfo GROUP BY department HAVING
-- count(*)>1;

-- Q18. Write a query to retrieve the last 3 records from the EmployeeInfo table.

-- select * from employeeinfo LIMIT 3 OFFSET 2;

-- Q19. Write a query to find the third-highest salary from the EmpPosition table.

-- SELECT empid,salary from empposition ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- Q20. Write a query to display the first and the last record from the EmployeeInfo table.

-- select * from employeeinfo where empid=(select min(empid) from employeeinfo);
-- select * from employeeinfo where empid=(select max(empid) from employeeinfo);

-- Q21. Write a query to retrieve Departments who have less than 2 employees working in it.

SELECT department,count(empid) from employeeinfo GROUP BY department HAVING count(empid)<2;