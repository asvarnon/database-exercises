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

SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;

SELECT CONCAT(first_name, ' ', last_name) AS name, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE birth_date LIKE '%%%%-12-25'
  AND hire_date > '1990-01-01'
ORDER BY birth_date, hire_date DESC;

# next two are same with added COUNT

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name LIKE 'Irena' OR first_name LIKE 'Vidya' OR first_name LIKE 'Maya'
GROUP BY gender;


