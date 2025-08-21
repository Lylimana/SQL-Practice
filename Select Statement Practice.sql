SELECT * 
FROM parks_and_recreation.employee_demographics; 

SELECT first_name, 
last_name,
birth_date,
age,
age - 10 # SQL math uses PEMDAS
FROM parks_and_recreation.employee_demographics; 

# Selects all unique elements in first_name of employee_demographics
SELECT distinct first_name
FROM parks_and_recreation.employee_demographics; 

# Selects all unique elements in gender of employee_demographics
SELECT distinct gender
FROM parks_and_recreation.employee_demographics; 

# if distinct is called on multiple columns, it checks if row is unique rather than individual cell