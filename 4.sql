--  CREATE table patient(p_id int primary key NOT NULL AUTO_INCREMENT,
--  p_name varchar(20),
--  sex varchar(2),
--  age int,
--  address varchar(20),
--  postal_code int,
--  state varchar(15),
--  country varchar(10),
--  reg_date date
--  );

-- ALTER TABLE patient modify address varchar(40);

-- desc patient;
-- INSERT into patient values(01,'Sheela','F',23,'Flat no 201, Vasavi Heights, Yakutapura ',500023,'Telangana','India','2020-03-03',142),
-- (02,'Rehan','M',21,'Building no 2, Yelahanka',560063,'Karnataka','India','2020-11-13',211),
-- (03,'Anay','M',56,'H No 1, Panipat',132140,'Haryana','India','2021-12-12',142),
-- (04,'Mahira','F',42,'House no 12, Gandhinagar',382421,'Gujarat','India','2022-01-28',345),
-- (05,'Nishant','M',12,'Sunflower Heights,Thane',400080,'Maharashtra','India','2022-01-05',131);

-- CREATE TABLE checkup(p_id int primary key Not NULL AUTO_INCREMENT,
-- bp varchar(10),weight int,fee int);

-- INSERT INTO checkup VALUES(01,'121/80',67,300),(02,'142/76',78,400),
-- (03,'151/75',55,300),(04,'160/81',61,550),(05,'143/67',78,700);

-- select * from patient;
-- select * from checkup;

-- Q1.  Write an SQL query to fetch the current date-time from the system.

-- SELECT now();

-- Q2. Write a SQL query to fetch the PatientName in uppercase and state as lowercase. Also use the ALIAS name for the result-set as PatName and NewState.

-- select upper(p_name) as PatName,lower(state) as NewState from patient;

-- Q3. Find the Nth(5th) highest consultation fees from the PatientsCheckup table with and without using the TOP/LIMIT keywords.

--  select fee from checkup p1 
--  WHERE 3=(
--     select count(distinct(p2.fee)) 
--     from checkup p2
--      WHERE p1.fee < p2.fee and p1.fee != p2.fee);

-- Q4. Write a query to fetch top 3 records using the TOP/LIMIT, ordered by ConsultationFees.

-- SELECT * from checkup ORDER BY fee DESC LIMIT 3;

-- Q5. Write a SQL query to create a table where the structure is copied from other table.
-- Create an Empty Table
-- Create a table consisting data


-- CREATE TABLE temp1 (select * from patient where 1=0);

-- CREATE table temp2(select * from patient);

