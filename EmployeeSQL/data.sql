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

#For this next table I had to run each of the previous tables I created in order for my reference clauses to work and for the successful query to take place. 
#For clarification I did not have to execute the select * from statements because I did not need to see that tables individually again. 

#Below is now the SQL code for my Dept_emp table that I created

CREATE TABLE Dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES Employees   (emp_no) ,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM Dept_emp;

#Before creating my Dept_manager table I need to drop the previous table 

DROP TABLE Dept_emp;

#Code for Dept_manager table that I created 

CREATE TABLE Dept_manager (
   dept_no VARCHAR NOT NULL,
   emp_no INT NOT NULL,
   from_date DATE NOT NULL,
   to_date DATE NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
   PRIMARY KEY (emp_no,dept_no)
); 

SELECT * FROM Dept_manager; 

#Having learned from my preivous steps, I did not have to rerun each of the previous tables because each of my PK/EK and reference objects were actived. 

# The code for my last two tables can be found below. Nothing out of the ordinary here. Column data types mirror those used for our previous tables. The only thing that varies are which values are tagged as PKs becuase of the table it linked/related to. 

CREATE TABLE Salaries (
    emp_no      INT  NOT NULL,
    salary      INT  NOT NULL,
    from_date   DATE NOT NULL,
    to_date     DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    PRIMARY KEY (emp_no, from_date)
) ;

SELECT * FROM Salaries; 

#Dropped salaries table prior to creating titles table 

DROP TABLE Salaries; 

#Code for final table 

CREATE TABLE Titles (
    emp_no      INT NOT NULL,
    title       VARCHAR NOT NULL,
    from_date   DATE NOT NULL,
    to_date     DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    PRIMARY KEY (emp_no,title, from_date)
); 

SELECT * FROM Titles;

DROP TABLE Titles; 