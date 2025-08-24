# Subqueries

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT * 
FROM parks_departments;

SELECT *
FROM employee_salary as es
INNER JOIN parks_departments as pd
	ON es.dept_id = pd.department_id
;

SELECT * 
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id
		FROM employee_salary
		WHERE dept_id = 1
	)
;

SELECT first_name, last_name, salary, 
(SELECT AVG(salary)
From employee_salary) AS avg_salary
FROM employee_salary
; 

SELECT gender, avg(age), min(age), max(age), count(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, avg(`min(age)`), avg(`max(age)`)
FROM 
(SELECT gender, avg(age), min(age), max(age), count(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
group by gender
;

SELECT avg(min_age), avg(max_age)
FROM 
(SELECT gender, avg(age) as avg_age, min(age) as min_age, max(age) as max_age, count(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
;