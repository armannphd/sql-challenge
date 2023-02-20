-- List the employee number, last name, first name, sex, 
-- and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON
e.emp_no=s.emp_no;

-- List the first name, last name, and hire date
-- for the employees who were hired in 1986 
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e
WHERE hire_date BETWEEN to_date('1986-01-01','YYYY-MM-DD') 
                    AND to_date('1986-12-31','YYYY-MM-DD');
					
--List the manager of each department along with their department number,
--department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d ON
d.dept_no=dm.dept_no
INNER JOIN employees e ON
e.emp_no=dm.emp_no;

--List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON
de.emp_no=e.emp_no
INNER JOIN departments d ON
d.dept_no=de.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and 
--whose last name begins with the letter B
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their
--employee number, last name, and first name
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN
(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no = 'd007'
);

--List each employee in the Sales and Development departments, including their employee number,
--last name, first name, and department name
CREATE VIEW joined AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
de.emp_no=e.emp_no
INNER JOIN departments d ON
d.dept_no=de.dept_no;

SELECT * FROM joined;

SELECT emp_no, last_name, first_name, dept_name
FROM joined
WHERE dept_name = 'Development' OR dept_name = 'Sales';

DROP VIEW joined;

--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC;



