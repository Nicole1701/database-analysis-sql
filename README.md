# Employee Database: A Mystery in Two Parts

## Project Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.


### Data Modeling

Using [https://www.genmymodel.com/](https://www.genmymodel.com/), I created an ERD diagram of all 6 data files. 

![ERD](images/ERD_diagram.jpeg)


### Data Engineering

Using the information from the table, I created a schema for each of the six CSV files, being sure to specify data types, primary keys, foreign keys, and any other constraints. After running the schema, the data must be imported in the following order:

 - departments
 - titles
 - employees
 - salaries
 - dept_emp
 - dept_manager    
 

### Data Analysis
Once the database was complete, I generated queries on the following requests:

 1. List the following details of each employee: employee number, last name, first name, sex, and salary
 
>SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;
 
 2. List first name, last name, and hire date for employees who were hired in 1986.
 
>SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;
 
 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
 
>SELECT m.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager m 
JOIN departments d ON m.dept_no = d.dept_no
JOIN employees e ON m.emp_no = e.emp_no;
 
 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
 
>SELECT e.emp_no, de.dept_no, e.last_name, e.first_name, d.dept_name 
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
ORDER BY e.emp_no;
 
 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
 
>SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
 
 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
 
>SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';
 
 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
 
>SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
 
 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
 
>SELECT last_name,
COUNT (last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;
 

## Bonus Activity

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss.

1. Import the SQL database into Pandas. 


2. Create a histogram to visualize the most common salary ranges for employees.

![Salary_Histogramn](images/Range_of_Employee_Salaries.png)

3. Create a bar chart of average salary by title.

![Salary_by_Title](images/Salary_by_Title.png)


### Epilogue
Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

![My_ID](images/my_id.JPG)


