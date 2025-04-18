-- This script creates the tables for the Employee database.
-- The tables are created in the following order:

-- 1. Create titles
CREATE TABLE titles (
    title_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- 2. Create departments
CREATE TABLE departments (
    dept_no VARCHAR(50) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- 3. Create employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(50),
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- 4. Create department_emp
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(50),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- 5. Create Department_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(50),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- 6. Create Salaries
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

