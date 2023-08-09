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

-- 17. Write an SQL query to fetch the position of a given character(s) in a field.

-- select fullname,instr(fullname,'a') from employeedetails;

-- 18. Write an SQL query to display both the EmpId and ManagerId together.

-- select empid,managerid from employeedetails;
-- select concat(empid,',',managerid) from employeedetails;

-- 19. Write a query to fetch only the first name(string before space) from the FullName column of the EmployeeDetails table.

-- SELECT fullname,mid(fullname,1,locate(' ',fullname)) as firstname from employeedetails; 

-- 20. Write an SQL query to uppercase the name of the employee and lowercase the city values.

-- select upper(fullname),lower(city) from employeedetails;

-- 21. Write an SQL query to find the count of the total occurrences of a particular character – ‘n’ in the FullName field.

-- select fullname,length(fullname)-length(REPLACE(fullname,'n','')) as length from employeedetails;

-- 22. Write an SQL query to get the employee names by removing leading and trailing spaces.

-- select fullname,ltrim(rtrim(fullname)) from employeedetails;

-- 23. Fetch all the employees who are not working on any project.

-- select count(empid) from employeedetails WHERE empid 
-- NOT IN (select empid from employeesalary);

-- 24. Write an SQL query to fetch employee names having 
-- a salary greater than or equal to 5000
--  and less than or equal to 10000.

-- SELECT fullname from employeedetails WHERE empid IN
--  (select empid from employeesalary where salary BETWEEN 5000 and 10000);

-- 25. Write an SQL query to find the current date-time.

-- select now();

-- 26. Write an SQL query to fetch all the Employee details from the EmployeeDetails table who joined in the Year 2020.

-- select * from employeedetails WHERE doj BETWEEN '2020-01-01' AND '2020-12-30';

-- select * from employeedetails WHERE YEAR(doj)='2020';

-- 27. Write an SQL query to fetch all employee records from
--  the EmployeeDetails table who have a salary record in the EmployeeSalary table.

-- select * from employeedetails s where EXISTS (SELECT * from employeesalary e
--  WHERE s.empid=e.empid);

-- 28. Write an SQL query to fetch the project-wise count of employees sorted by project’s count in descending order.

-- select project,count(*) AS NUM from employeesalary GROUP BY project ORDER BY NUM DESC;

-- 29. Write a query to fetch employee names and salary records. Display the employee details even if the salary record is not present for the employee.

-- select employeedetails.fullname,employeesalary.salary from employeedetails left join employeesalary on employeedetails.empid=employeesalary.empid;

-- select employeedetails.empid,fullname,salary from employeedetails join employeesalary on employeedetails.empid=employeesalary.empid;

-- 31. Write an SQL query to fetch all the Employees who are also managers from the EmployeeDetails table.

-- select distinct e.fullname from employeedetails e INNER JOIN employeedetails m on e.empid=m.managerid;

-- 32. Write an SQL query to fetch duplicate records from EmployeeDetails (without considering the primary key – EmpId).

-- INSERT INTO employeedetails VALUES(102,'chetan',305,'2019-01-01','ujjain');
-- SELECT fullname,empid,managerid,count(*) from employeedetails GROUP BY fullname,empid,managerid HAVING count(*)>1;

-- 33. Write an SQL query to remove duplicates from a table without using a temporary table.

-- delete e from employeedetails e inner JOIN employeedetails p on e.empid > p.empid
-- and e.fullname=p.fullname and e.managerid=p.managerid;

-- select * from employeedetails;

-- 34. Write an SQL query to fetch only odd rows from the table.

-- SELECT * from employeedetails WHERE mod(empid,2)=1;

-- 40. Write SQL query to find the 3rd highest salary from a table without using the TOP/limit keyword.

-- select salary from employeesalary emp1
-- where 2=(select count(distinct(emp2.salary)) from employeesalary emp2 where
-- emp2.salary > emp1.salary);


