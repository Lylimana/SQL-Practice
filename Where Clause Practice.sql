# WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name = 'April'
; 

SELECT *
FROM employee_salary
WHERE occupation = 'Office Manager'
; 

SELECT *
FROM employee_salary
WHERE salary >= 70000
; 


# Logical operators - AND, OR, NOT
SELECT *
FROM employee_demographics
WHERE gender = 'Male' and age < 40
;

SELECT *
FROM employee_demographics
WHERE gender != 'Male' OR birth_date > '1985-01-01'
;  

SELECT *
FROM employee_demographics
WHERE gender != 'Female' OR NOT age < 35
;  

SELECT *
FROM employee_demographics
WHERE (first_name = 'Andy' AND last_name ='Gergich') OR age > 45
;  


# Like Statement

# % - anything can be before or after it
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'An%' 
;  

SELECT *
FROM employee_demographics
WHERE last_name LIKE '%o%' 
;  

SELECT *
FROM employee_demographics
WHERE last_name LIKE 'm%' 
;  

SELECT *
FROM employee_demographics
WHERE age LIKE '3%' 
;  

# _ - can only hold as many characters as underscores
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A___' 
;  

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A__' 
;  


