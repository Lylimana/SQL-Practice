# Window Functions 

SELECT * 
FROM employee_demographics; 

SELECT gender, AVG(salary) as avg_salary
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
group by gender
; 

# Similar to group by but separates on individual rows 
SELECT gender, AVG(salary) OVER(partition by gender)
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
; 

# Allows for more individual information
SELECT dem.first_name, 
dem.last_name, 
AVG(salary) OVER(partition by gender) as avg_salary # Completely independant of everything else happening in the code
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
; 

SELECT dem.first_name, 
dem.last_name, 
SUM(salary) OVER(partition by gender) as sum_salary 
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
; 


# Rolling Total
SELECT dem.first_name, 
dem.last_name,
gender, 
salary,
SUM(salary) OVER(partition by gender Order by dem.employee_id) as Rolling_Total # Adding salary to existing total
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
; 

# Row Number 
SELECT dem.first_name, 
dem.last_name,
dem.employee_id,
gender, 
salary,
Row_number() Over() as 'row_number'
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
; 

SELECT dem.first_name, 
dem.last_name,
dem.employee_id,
gender, 
salary,
Row_number() Over(Partition by gender order by salary desc) as 'row_number', # No duplicates
RANK() Over(Partition by gender order by salary desc) as 'rank', # Duplicates based of order by and give number positionally 
DENSE_RANK() Over(Partition by gender order by salary desc) as 'dense_rank' # Duplicates based of order by but does not give number positionally
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id 
; 