-- Run in order each labeled per query. 

-- Query 1: List all employees with their first and last names
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

-- query 2: List all employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Query 3: List all department managers with their names and department names
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no;

-- Query 4: List all employees with their department names
SELECT de.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

-- Query 5: List all employees with first name 'Hercules' and last name starting with 'B'
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Query 6: List all employees in the 'Sales' department
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON de.dept_no = d.dept_no 
WHERE d.dept_name = 'Sales';

-- Query 7: List all employees in the 'Sales' and 'Development' departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- Query 8: List the last names of employees and the count of each last name
SELECT last_name, COUNT(last_name) AS name_count
FROM employees
GROUP BY last_name 
ORDER BY name_count DESC;