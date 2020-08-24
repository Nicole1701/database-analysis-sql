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
 
![Employee Data](images/q1_query.jpeg)
 
 2. List first name, last name, and hire date for employees who were hired in 1986.
 
![Hire Date](images/q2_query.jpg)
 
 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
 
![Manager](images/q3_query.jpg)
 
 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
 
![Department](images/q4_query.jpg)
 
 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
 
![Hercules](images/q5_query.jpg)
 
 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
 
![Sales Department](images/q6_query.jpg)
 
 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
 
![Sales and Development](images/q7_query.jpg)
 
 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
 
![Last Name Frequency](images/q8_query.jpg)
 

## Bonus Activity

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss.

1. Import the SQL database into Pandas. 


2. Create a histogram to visualize the most common salary ranges for employees.


3. Create a bar chart of average salary by title.


### Epilogue
Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.



