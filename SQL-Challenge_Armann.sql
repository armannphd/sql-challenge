-- remove any existing tables

DROP TABLE departments CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE dept_emp CASCADE;
DROP TABLE dept_manage CASCADE;
DROP TABLE salaries CASCADE;
DROP TABLE titles CASCADE;

-- Create a departments table
CREATE TABLE departments (
  dept_no VARCHAR NOT NULL,
  dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

-- Create a employees table
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL
);

SELECT * FROM employees;

-- Create a dept_emp table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL
);

SELECT * FROM dept_emp;

-- Create a dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL
);

SELECT * FROM dept_manager;

-- Create a salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

SELECT * FROM salaries;

-- Create a titles table
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
);

SELECT * FROM titles;