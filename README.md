# Employee Database: A Mystery in Two Parts

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.


### Data Modeling

Using [https://www.genmymodel.com/](https://www.genmymodel.com/), I created an ERD diagram of all 6 data files. 

![diagram](/images/ERD_diagram)

### Data Engineering

Using the information from the table, I created a schema for each of the six CSV files, being sure to specify data types, primary keys, foreign keys, and other constraints. After running the schema, the data must be imported in the following order:

 - departments
 - titles
 - employees
 - salaries
 - dept_emp
 - dept_manager    

### Data Analysis
Once the database was complete, I ran generated queries on the following requests:

 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
 2. List first name, last name, and hire date for employees who were hired in 1986.
 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Bonus Activity

