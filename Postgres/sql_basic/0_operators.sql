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
