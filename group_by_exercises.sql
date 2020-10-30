USE employees;

SELECT COUNT(*), first_name
FROM employees
WHERE hire_date = '1990-12-25'
GROUP BY first_name;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*)

# Exercises

SELECT DISTINCT dept_name, COUNT(*)
FROM departments
GROUP BY dept_name
ORDER BY COUNT(*) ASC
Limit 20;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%e';




