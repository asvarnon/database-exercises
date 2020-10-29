USE employees;
SHOW tables;

select d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
from departments as d
    join dept_manager as dm on dm.dept_no = d.dept_no
    join employees as e on e.emp_no = dm.emp_no
where dm.to_date = '9999-01-01';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager dm ON e.emp_no = dm.emp_no
    JOIN departments d ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01';

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
     JOIN dept_manager dm ON e.emp_no = dm.emp_no
     JOIN departments d ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01' AND e.gender = 'f';


