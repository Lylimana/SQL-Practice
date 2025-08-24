# Case Statements

SELECT first_name, last_name, age,
CASE 
	WHEN age <= 35 THEN 'Young'
    WHEN age >= 50 THEN 'Old'
    WHEN age BETWEEN 36 AND 49 THEN 'Getting old' 
END AS Age_Bracket
FROM employee_demographics
;

SELECT first_name, last_name, salary,
CASE 
	WHEN salary <= 50000 THEN '5%'
	WHEN salary > 50000 THEN '7%'
    WHEN dept_id = 6 THEN '10%'
END AS Pay_Increase_and_Bonus
FROM employee_salary;

SELECT first_name, last_name, salary,
CASE 
	WHEN salary <= 50000 THEN salary * 1.05
	WHEN salary > 50000 THEN salary * 1.07
END AS New_Salary,
CASE 
    WHEN dept_id = 6 THEN salary * 1.1
END AS Pay_Bonus
FROM employee_salary;

SELECT *
FROM employee_salary;

SELECT *
FROM parks_departments
