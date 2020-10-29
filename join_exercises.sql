USE employees;
SHOW tables;

select d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
from departments as d
    join dept_manager as dm on dm.dept_no = d.dept_no
    join employees as e on e.emp_no = dm.emp_no
where dm.to_date = '9999-01-01';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager as dm ON e.emp_no = dm.emp_no
    JOIN departments as d ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
     JOIN dept_manager as dm ON e.emp_no = dm.emp_no
     JOIN departments as d ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01' AND e.gender = 'f';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
         JOIN dept_manager as dm ON e.emp_no = dm.emp_no
         JOIN departments as d ON dm.dept_no = d.dept_no
         JOIN salaries as s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY salary;


