USE employees;

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name
FROM employees
    WHERE hire_date = (SELECT hire_date
                        FROM employees
                        WHERE emp_no = 101010);


SELECT title, emp_no
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name = 'Aamod');


# Find all the current department managers that are female.
SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE emp_no IN (SELECT emp_no
                FROM dept_manager
                WHERE to_date = '9999-01-01')
AND gender = 'F';


