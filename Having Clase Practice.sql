# Having 

SELECT gender, AVG(age) 
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) < 40  # Comes after GROUP BY
;

# Use HAVING after GROUP BY has been run
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 40000
;