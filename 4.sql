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

-- Q6. Write a query to fetch even and odd rows from a table.

-- select * from patient where mod(p_id,2)=0;

-- Q7. Write an SQL query to fetch duplicate records from Patients, without considering the primary key.

-- select p_name,state,doctor_id,count(*) from patient
-- GROUP BY p_name,state,doctor_id HAVING count(*)>1;

-- Q8. Write a query to fetch the number of patients whose weight is greater than 68.

-- select count(*) as overweight from checkup WHERE weight>68;

-- Q9. Write a query to retrieve the list of patients from the same state.

-- select p.p_name from patient p,patient p1 WHERE p.p_name != p1.p_name and p.state=p1.state;

-- select * from patient;

-- Q10. Write a query to retrieve two minimum and maximum consultation fees from the PatientsCheckup Table.

-- SELECT fee as fees from checkup ORDER BY fee ASC LIMIT 2;

-- SELECT fee as fees from checkup ORDER BY fee DESC LIMIT 2;

-- Q11. Write a query to fetch patient details along with the weight fees, even if the details are missing.

-- SELECT p.p_name,p1.fee from patient p LEFT JOIN checkup p1 on p.p_id=p1.p_id;

-- Q12. Write a SQL query to fetch doctor wise count of patients sorted by the doctors.

-- SELECT doctor_id,count(*) from patient GROUP BY doctor_id ORDER BY doctor_id DESC;

-- Q13. Write a SQL query to fetch the first and last record of the Patients table.

-- SELECT * from patient WHERE p_id=(select min(p_id) from patient);

-- select * from patient where p_id=(SELECT max(p_id) from patient);

-- Q14. Write a SQL query to fetch consultation fees - wise count and sort them in descending order.

-- SELECT fee,count(fee) from checkup GROUP BY fee ORDER BY fee DESC;

-- Q15. Write a SQL query to retrieve patient details from the Patients table who have a weight in the PatientsCheckup table.

-- SELECT p.* from patient p,checkup c WHERE p.p_id=c.p_id;

-- Q16. Write a SQL query to retrieve the last 2 records from the Patients table.
-- SELECT * from patient ORDER BY p_id DESC LIMIT 2;

-- select * from patient LIMIT 2 offset 3;

-- Q17. Write a SQL query  to find all the patients who joined in the year 2022.

-- select * FROM patient where YEAR(reg_date)=2022;

-- Q18. Write a SQL query to fetch 50% records from the PatientsCheckup table.

-- select * from checkup WHERE p_id < (SELECT count(p_id)/2 from checkup);

-- Q19. Write a query to find those patients who have paid consultation fees between 400 to 700.

-- SELECT * from patient WHERE p_id IN (SELECT p_id from checkup WHERE fee BETWEEN 400 and 700);

-- Q20. Write a query to update the patient names by removing the leading and trailing spaces.

-- UPDATE patient set p_name=LTRIM(RTRIM(p_name));

-- Q21. Write a query to add email validation to your database.

-- SELECT email FROM patient WHERE NOT REGEXP_LIKE(email, '[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}', 'i');

-- Q22. Write a query to find all patient names whose name:
-- Begin with A

-- select p_name from patient WHERE p_name like('A%');

-- Ends with S and contains 3 alphabets
-- SELECT p_name from patient where p_name like '___S';

-- Staying in the state Telangana

-- SELECT p_name from patient where state like 'Telangana';

-- Q23. Write a SQL query to fetch details of all patients excluding patients with name  “Sheela” and “Anay”.

-- select * from patient WHERE p_name not IN ('Sheela','Anay');

-- Q24. Write a query to fetch the total count of occurrences of a particular character – 'a' in the PatientName.

-- select p_name,length(p_name)-length(replace(p_name,'a','')) as countofx from patient;

-- Q25. Write a query to retrieve the first three characters of  PatientName from the Patients table.

-- select substring(p_name,1,3) from patient;

-- Q26. Write a query to fetch only the Address (string before space).

-- select mid(address,1,locate(' ',address)) from patient;

-- Q27. Write a query to combine Address and state into a new column - NewAddress.

-- select concat(address,' ',state) as NewAddress from patient;

-- Q28. Write a query to fetch PatientIDs  which are present in: 
-- Both tables

-- SELECT patient.p_id,patient.p_name from patient INNER JOIN checkup on patient.p_id=checkup.p_id;
-- select P_id,p_name from patient where p_id in (select p_id from checkup);

-- One of the table. Let us say, patients present in Patients and not in the PatientsCheckup table.

-- SELECT patient.p_name,patient.p_id from patient WHERE patient.p_id not IN (select p_id from checkup);

-- Q29. Write a query to find the number of patients whose RegDate is between 01/04/2021 to 31/12/2022 and are grouped according to state.

-- select state,count(p_id) from patient WHERE reg_date BETWEEN '2022-04-01' and '2022-12-31'
-- GROUP BY state ;

-- Q30. Write a query to fetch all records from the Patients table; ordered by PatientName in ascending order, State in descending order.

--  select * from patient ORDER BY p_name ASC,state DESC;