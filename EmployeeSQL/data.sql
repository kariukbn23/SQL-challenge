# SQL Query Code for Table 1 (Departments) that I created prior to importing the data 

CREATE TABLE Departments (
    dept_no     VARCHAR NOT NULL,
    dept_name   VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
    
);

SELECT * FROM Departments; 

# Before creating second table for employees I deleted the Departments table created above, for space purposes. 

DROP TABLE Departments;

# The next table created below was with the employee information just because my second primary key that will be used to link to 2 of the other csv is originally contained in this table. 

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    birth_date  DATE NOT NULL,
    first_name  VARCHAR NOT NULL,
    last_name   VARCHAR NOT NULL,
    gender      VARCHAR NOT NULL,    
    hire_date   DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM Employees; 

# Before creating third table for Dept_emp I deleted the Employees table created above, for space purposes.

DROP TABLE Employees;

