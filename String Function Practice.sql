# String Functions

# LENGTH()
SELECT length('Boop');

SELECT first_name, LENGTH(first_name) AS len_name
FROM employee_demographics
ORDER BY len_name
;

# UPPER() and LOWER()
SELECT UPPER('boop')
;

SELECT Lower(Last_name) AS low_name, Upper(last_name) AS up_name
FROM employee_demographics
ORDER BY up_name, low_name
# Good for standardisation
;

# TRIM()
SELECT Trim('   HELP                   ') # Removes white space
;

SELECT ltrim('   HELP                   ') # Removes white space left
;

SELECT rtrim('   HELP                   ') # Removes white space right
;

# SUBSTRING()
SELECT * 
FROM employee_demographics
;

SELECT first_name, 
LEFT(first_name, 3) as Nickname, # From the left
RIGHT(first_name, 3), # From the right
SUBSTRING(first_name, 2, 3),  # Starts from position 2 and takes the next 3 characters 
SUBSTRING(birth_date, 6, 2) as 'birth_month',
SUBSTRING(birth_date, 9, 2) as 'day'
FROM employee_demographics
;

# REPLACE()
SELECT first_name, 
REPLACE(first_name, 'n', 'p') # Replace all 'n's in first_name with 'p'
FROM employee_demographics
;

# LOCATE()
SELECT LOCATE('g', 'Miguel Manalili')
;

SELECT first_name, 
locate('ri', first_name)
FROM employee_demographics
;

#
SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) # Combines Columns together
FROM employee_demographics
;