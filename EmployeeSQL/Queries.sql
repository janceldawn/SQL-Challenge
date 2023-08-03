--List employee number, last name, first name, sex and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e JOIN salaries AS s ON (e.emp_no = s.emp_no);
	

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


--List the manager of each department along with their department number, department name, employee number, last name, first name
SELECT t.title, d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "Departments" AS d JOIN dept_manager AS m ON (d.dept_no = m.dept_no)
						JOIN employees AS e ON (e.emp_no = m.emp_no)
						JOIN titles AS t ON (e.emp_title_id = t.title_id)
		WHERE title = 'Manager';
					

--List the department number for each employee along with that employee's employee number, last name, first name, and department name
SELECT d.dept_no, e.emp_no, e.last_name,e.first_name, d.dept_name
FROM "Departments" AS d JOIN dept_manager AS m ON (d.dept_no = m.dept_no)
						JOIN employees AS e ON (e.emp_no = m.emp_no);


--List first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name,e.first_name
FROM "Departments" AS d JOIN dept_manager AS m ON (d.dept_no = m.dept_no)
						JOIN employees AS e ON (e.emp_no = m.emp_no)
WHERE d.dept_name = 'Sales';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT d.dept_name, e.emp_no, e.last_name,e.first_name
FROM "Departments" AS d JOIN dept_manager AS m ON (d.dept_no = m.dept_no)
						JOIN employees AS e ON (e.emp_no = m.emp_no)
WHERE d.dept_name IN ('Sales', 'Development');
				

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, count(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY last_name desc;
