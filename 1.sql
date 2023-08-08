-- CREATE TABLE employeedetails (empid int,fullname varchar(20),
-- managerid int,
-- doj date,city varchar(20));

-- desc employeedetails;

-- INSERT INTO employeedetails VALUES (121,'john snow',321,'2019-01-31','toronto'),
-- (321,'walter white',986,'2020-01-30','california'),(421,'kuldeep rana',876,'2021-11-27','new delhi');
-- INSERT INTO employeedetails VALUES(101,'chetan',305,'2019-01-01','ujjain');

-- SELECT * from employeedetails;

-- CREATE TABLE employeesalary(empid INT,project VARCHAR(20),salary INT,variable INT);

-- INSERT INTO employeesalary values(121,'p1',8000,500),(321,'p2',10000,1000),
-- (421,'p1',12000,0);

-- SELECT * FROM employeesalary;

-- 1. Write an SQL query to fetch the EmpId and FullName of all the employees working
--  under the Manager with id – ‘986’.

-- SELECT empid,fullname from employeedetails where managerid=986;

-- 2. Write an SQL query to
--  fetch the different projects available from the EmployeeSalary table.

-- SELECT DISTINCT(project) from employeesalary;

-- 3. Write an SQL query to fetch the count of employees working in project ‘P1’.

-- SELECT count(empid) FROM employeesalary WHERE project='p1';

-- 4. Write an SQL query to find the maximum, minimum, and average salary of the employees.

-- SELECT max(salary) as maxsal,min(salary) as minsal,AVG(salary) as avgsal from employeesalary;

-- 5. Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.

-- select empid from employeesalary WHERE salary BETWEEN 9000 AND 15000;

-- 6. Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.

-- SELECT * from employeedetails WHERE city='toronto' and managerid=321;

-- 8. Write an SQL query to fetch all those employees who work on Projects other than P1.

-- SELECT fullname FROM employeedetails WHERE empid=(SELECT empid from employeesalary WHERE project!='p1');

-- SELECT empid from employeesalary WHERE NOT project='p1';

-- 9. Write an SQL query to display the total salary of each employee adding the Salary with Variable value with name.

-- SELECT d.fullname,e.empid,e.salary+e.variable as totalsalary from employeesalary e,employeedetails d
-- WHERE d.empid=e.empid;

-- 10. Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.

-- SELECT fullname from employeedetails WHERE fullname like '__hn%';

-- 11. Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.

-- SELECT empid from employeedetails
-- UNION
-- SELECT empid from employeesalary;

-- 14. Write an SQL query to fetch the EmpIds that are present in both the tables –  ‘EmployeeDetails’ and ‘EmployeeSalary.

-- SELECT employeedetails.empid from employeedetails,employeesalary WHERE employeedetails.empid=employeesalary.empid;

-- 15. Write an SQL query to fetch the EmpIds that are present 
-- in EmployeeDetails but not in EmployeeSalary.

-- select empid,fullname from employeedetails where empid NOT IN(select empid from employeesalary);

-- 16. Write an SQL query to fetch the employee’s full names and replace the space with ‘-’.

-- SELECT REPLACE(fullname,' ','-') from employeedetails;

-- SELECT fullname from employeedetails;