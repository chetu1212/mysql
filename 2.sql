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

SELECT *  from empposition;
