SELECT * FROM subjects s 
--where subject_name <> 'Mathematics'
where subject_name != 'Mathematics';

select * from staff s 
where gender = 'F' and age >= 55;

-- Logical operator
select * from subjects s  
where subject_name like 'Computer%';

--Cross join
select count(*) from students s 
cross join parents p
where s.gender = 'Male' and s.age = 14;

select * from students s 
where s.last_name like '%y'; 

--Subquery
select * from staff s 
-- Write a query where you have to find the name of the people in staff table whose age is more than the average age of all the members.
-- find the average age and then filter the members based on the above result.
--select avg(age) from staff s; -- 40.5652173913043478
select * from staff s 
where age >= (select avg(age) from staff s);

--Scalar subquery

select * from staff s 
join (select avg(age) a from staff) avg_age
on s.age > avg_age.a;

--Multiple-row subquery

-- Find the persons who has highest age in each department
select staff_type, max(age) from staff s
group by staff_type;


-- Question 174 leetcode
-- https://leetcode.com/problems/combine-two-tables/
-- # Write your MySQL query statement below
Select p.firstName, p.lastName, a.city, a.state
From Person p left join Address a ON p.personID = a.personID;


--181 leetcode
--https://leetcode.com/problems/employees-earning-more-than-their-managers/submissions/
-- # Write your MySQL query statement below
select e.name as Employee
from Employee e, Employee m
where e.managerId = m.id And e.salary > m.salary;

--Query optimization

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m ON e.managerId = m.id AND e.salary > m.salary;

SELECT e.name AS Employee
FROM Employee e
INNER JOIN (
  SELECT id, salary
  FROM Employee
) m ON e.managerId = m.id AND e.salary > m.salary;

--182 leetcode
-- https://leetcode.com/problems/duplicate-emails/
--# Write your MySQL query statement below
select distinct p.email
from Person p, Person e
where p.email = e.email and p.id <> e.id;

select * from address a;
select * from classes c
UNION
select * from parents p;

select * from staff_salary ss;

-- Fetch all the staff id whose salary is more than the avg salary using WITH clause

with average_salary (avg_sal) as 
(select avg(salary) from staff_salary ss)

select * from staff_salary ss, average_salary av 
where ss.salary > av.avg_sal;

create or replace view adrs as 
select * from address a 
where a.state = 'Texas';

select * from adrs;

create role vini
login
password 'vini';

--Q. Display numbers from 1 to 10 without using any in built function.

with recursive numbers as
 ( select 1 as n
   union
   select n +1
   from numbers where n < 10 )
select * from numbers; 



