# LIMIT and ALIASING

# LIMIT 
SELECT *
FROM employee_salary
LIMIT 5
;

SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary DESC
LIMIT 3
;

SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary DESC
LIMIT 2, 1 # Start at position 2 and take the next value after it
;


# ALIASING

SELECT gender, AVG(age) AS avg_age # Changes AVG(age) to avg_age - does not need AS
FROM employee_demographics
GROUP BY gender
HAVING avg_age  > 40
; 
