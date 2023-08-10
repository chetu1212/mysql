
175. Combine Two Tables (https://leetcode.com/problems/combine-two-tables/description/?envType=list&envId=e97a9e5m)

select Person.firstName,Person.lastName,Address.city,Address.state from Person
left join Address on Person.personId=Address.personId;

176. Second Highest Salary (https://leetcode.com/problems/second-highest-salary/description/?envType=list&envId=e97a9e5m)

select (select distinct salary from Employee order by salary desc limit 1 offset 1) as SecondHighestSalary;

177. Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/description/?envType=list&envId=e97a9e5m)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N=N-1;
  RETURN (
      # Write your MySQL query statement below.
      select distinct salary from Employee order by salary desc limit 1 offset N
      
  );
END

181. Employees Earning More Than Their Managers (https://leetcode.com/problems/employees-earning-more-than-their-managers/description/?envType=list&envId=e97a9e5m)

select e.name as Employee from Employee e 
where e.salary > (select salary from Employee k where e.managerId=k.id);

182. Duplicate Emails (https://leetcode.com/problems/duplicate-emails/description/?envType=list&envId=e97a9e5m)

select distinct(e.email) as Email from Person e,Person p 
where e.id != p.id and e.email=p.email;

183. Customers Who Never Order (https://leetcode.com/problems/customers-who-never-order/description/?envType=list&envId=e97a9e5m)

select name as Customers from Customers left join Orders on Customers.id = Orders.customerId where customerId is null;




