-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   emp.sex,
	   sal.salary
		
FROM employees emp
JOIN salaries sal ON sal.emp_no = emp.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp.first_name,
	   emp.last_name,
	   emp.hire_date
		
FROM employees emp
WHERE EXTRACT(YEAR FROM emp.hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.emp_no AS dept_manager,
	   dm.dept_no,
	   dept.dept_name,
	   emp.last_name,
	   emp.first_name
	   
FROM dept_manager dm
JOIN departments dept ON dept.dept_no = dm.dept_no
JOIN employees emp ON emp.emp_no = dm.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no,
	   de.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dept.dept_name

FROM dept_emp de
JOIN employees emp ON de.emp_no = emp.emp_no
JOIN departments dept ON dept.dept_no = de.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 
	emp.first_name,
	emp.last_name,
	emp.sex

FROM employees emp
WHERE emp.first_name = 'Hercules'
AND emp.last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 
	emp.emp_no,
	emp.first_name,
	emp.last_name
	
FROM employees emp
JOIN dept_emp de ON de.emp_no = emp.emp_no
JOIN departments dept ON dept.dept_no = de.dept_no
	AND dept.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	emp.emp_no,
	emp.first_name,
	emp.last_name,
	dept.dept_name
	
FROM employees emp
JOIN dept_emp de ON de.emp_no = emp.emp_no
JOIN departments dept ON dept.dept_no = de.dept_no
	AND dept.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT 
	emp.last_name, 
	COUNT(emp.last_name) 
	
FROM employees emp

GROUP BY emp.last_name
ORDER BY COUNT(emp.last_name) DESC;


































