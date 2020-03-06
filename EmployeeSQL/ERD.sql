Departments
-
dept_no VARCHAR PK
dept_name VARCHAR

Dept_emp
-
emp_no INT FK >- employees.emp_no
dept_no VARCHAR FK >- departments.dept_no
from_date DATE
to_date DATE

Dept_manager
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INT FK >- employees.emp_no
from_date DATE
to_date DATE

Employees
-
emp_no INT PK
birth_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE

Salaries
-
emp_no INT FK >- employees.emp_no
salary INT
from_date DATE
to_date DATE

Titles
-
emp_no INT FK >- employees.emp_no