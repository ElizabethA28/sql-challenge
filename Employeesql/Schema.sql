DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments ( 
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(dept_no)
);

--Query all fields from the table
SELECT *
FROM departments;


CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no) 

);


--Query all fields from the table
SELECT *
FROM dept_emp;


 
DROP TABLE dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY(emp_no) REFERENCES employee (emp_no)

);

--Query all fields from the table
SELECT *
FROM dept_manager;


CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARChAR NOT NULL,
    PRIMARY KEY(title_id)
);

--Query all fields from the table
SELECT *
FROM titles;


CREATE TABLE employee (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY(emp_title_id) REFERENCES titles (title_id),
    Primary KEY(emp_no)
);

--Query all fields from the table
SELECT *
FROM employee;


CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salaries INTEGER  NOT NULL,
    PRIMARY KEY(emp_no, salaries),
    FOREIGN KEY(emp_no) REFERENCES employee (emp_no)
);

--Query all fields from the table
SELECT *
FROM salaries;
