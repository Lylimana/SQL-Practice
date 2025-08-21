# GROUP BY 
SELECT *
FROM employee_demographics;


SELECT gender
FROM employee_demographics
GROUP BY gender
; 

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
; 

SELECT gender, AVG(age), MIN(age) , MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
; 

SELECT occupation, AVG(salary), MAX(salary), MIN(salary)
FROM employee_salary
GROUP BY occupation 
;

# ORDER BY 
SELECT *
FROM employee_demographics
ORDER BY age 
; 

SELECT *
FROM employee_demographics
ORDER BY birth_date ASC
; 

SELECT *
FROM employee_demographics
ORDER BY last_name DESC
; 

# Order matters...
SELECT *
FROM employee_demographics
ORDER BY gender DESC, age ASC
; 

SELECT *
FROM employee_demographics
ORDER BY 2
; 