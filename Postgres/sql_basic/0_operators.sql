SELECT * FROM subjects s 
--where subject_name <> 'Mathematics'
where subject_name != 'Mathematics';

select * from staff s 
where gender = 'F' and age >= 55;

-- Logical operator
select * from subjects s  
where subject_name like 'Computer%';
