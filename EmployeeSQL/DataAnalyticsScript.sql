#I created a new .sql file for my script for the different tasks. 

#Task 1 Script (List the following details of each employee: employee number, last name, first name, gender, and salary) 

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, employees.salary 
FROM Employees JOIN Salaries ON (Salaries.emp_no = Employees.emp_no);

#Task 2 Script (List employees who were hired in 1986)
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.hire_date 
FROM Employees WHERE EXTRACT (YEAR FROM hire_date) = 1986;

#Task 3 Script (List the manager of each department with the following information: department number, department name, the managers employee number, last name, first name, and start and end employment dates)

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date 
FROM Departments JOIN Employees ON (dept_manager.emp_no = employees.emp_no)
JOIN Dept_manager ON (departments.dept_no = dept_manager.dept_no); 


#Task 4 Script (List the department of each employee with the following information: employee number, last name, first name, and department name) 

SELECT employees.emp_no, employees.first_name, employees.last_name FROM Employees
SELECT departments.dept_name FROM Departments
JOIN Dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN Departments ON (dept_emp.dept_no = departments.dept_no);

#Task 5 (List all employees whose first name is "Hercules" and last names begin with "B.")

SELECT employees.emp_no, employees.first_name, employees.last_name FROM Employees WHERE first_name = "Hercules" AND last_name LIKE "B%";

#Task 6 (List all employees in the Sales department, including their employee number, last name, first name, and department name)

SELECT employees.emp_no, employees.first_name, employees.last_name FROM Employees
SELECT departments.dept_name FROM Departments
JOIN Dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN Departments ON (dept_emp.dept_no = departments.dept_no) WHERE departments.dept_name = "Sales";

#Task 7 (List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name)

SELECT employees.emp_no, employees.first_name, employees.last_name FROM Employees
SELECT departments.dept_name FROM Departments
JOIN Departments ON (dept_emp.dept_no = departments.dept_no) WHERE departments.dept_name = "Sales" OR departments.dept_name = "Development"
JOIN Dept_emp ON (employees.emp_no = dept_emp.emp_no);

#Task 8 (In descending order, list the frequency count of employee last names, i.e., how many employees share each last name). 

SELECT employees.last_name, COUNT(employees.emp_no) FROM Employees 
GROUP BY employees.last_name 
ORDER BY COUNT(employees.emp_no) DESC;


