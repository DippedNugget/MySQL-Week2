
//Question 1:

mysql> SELECT titles.title AS "Employee Title", COUNT(*) AS "Birth Dates after 1965-01-01" FROM employees
	INNER JOIN titles
	ON employees.emp_no = titles.emp_no
	WHERE birth_date > '1965-01-01'
	GROUP BY titles.title;

//Question 2:

mysql> SELECT titles.title AS "Employee Title", AVG(salary) AS "Average Salary" FROM salaries
	INNER JOIN titles
	ON salaries.emp_no = titles.emp_no
	GROUP BY titles.title;

//Question 3:

mysql> SELECT d.dept_name AS "Departments", SUM(s.salary) AS "Total Spent" FROM salaries s
	INNER JOIN dept_emp de ON de.emp_no = s.emp_no
	INNER JOIN departments d ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Marketing' AND YEAR(s.from_date) >= '1990' AND YEAR(s.to_date) <= '1992'
	GROUP BY d.dept_name;