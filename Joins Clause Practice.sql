# Joins 
# Combines tables 

SELECT * 
From employee_demographics
;


SELECT * 
From employee_salary
;

# Inner join
SELECT * 
From employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, dem.first_name, dem.last_name, occupation, salary # Similar column names on both tables need to be denoted
From employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

# Outter join
SELECT *
From employee_demographics AS dem
RIGHT JOIN employee_salary AS sal # Takes everything from the right table and matches with left table 
	ON dem.employee_id = sal.employee_id
;

SELECT *
From employee_demographics AS dem
LEFT JOIN employee_salary AS sal # Takes everything from the left table and matches with right table 
	ON dem.employee_id = sal.employee_id
;

# Self join
SELECT sal1.first_name Giver_Name,
sal1.Last_name Giver_Surname,
sal2.first_name Reciever_Name,
sal2.last_name Reciever_Surname
From employee_salary sal1
JOIN employee_salary sal2
    ON sal1.employee_id + 1= sal2.employee_id
;


# Joining multiple tables 
SELECT * 
FROM parks_departments
;

SELECT * 
From employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
    ON department_id = dept_id
;

SELECT * 
From employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
    ON pd.department_id = sal.dept_id 
;

