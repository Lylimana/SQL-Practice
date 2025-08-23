# Unions

SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name 
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION distinct # All unique values 
SELECT first_name, last_name 
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION distinct # All values including duplicates
SELECT first_name, last_name 
FROM employee_salary
;

SELECT first_name, last_name, 'Young' AS label
FROM employee_demographics
WHERE age < 40 
UNION 
SELECT first_name, last_name, 'Old Male' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'Old Female' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name, last_name, 'Rich' AS label
FROM employee_salary
WHERE salary > 60000
ORDER BY first_name, last_name
;
