SELECT m.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager m 
JOIN departments d ON m.dept_no = d.dept_no
JOIN employees e ON m.emp_no = e.emp_no;

