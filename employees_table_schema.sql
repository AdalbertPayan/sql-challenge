CREATE TABLE titles (
  title_id VARCHAR PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR NOT NULL,
  birth_date DATE,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
  emp_no INTEGER PRIMARY KEY,
  salary INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager

















































