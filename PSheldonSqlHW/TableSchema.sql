DROP TABLE employees;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    birth_date  DATE NOT NULL,
    first_name  VARCHAR(255) NOT NULL,
    last_name   VARCHAR(255) NOT NULL,
    gender      VARCHAR(255) NOT NULL,    
    hire_date   DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees

DROP TABLE departments;

CREATE TABLE departments (
    dept_no     CHAR(4) NOT NULL,
    dept_name   VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no)
    
);

SELECT * FROM departments;

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
   dept_no CHAR(4) NOT NULL,
   emp_no INT NOT NULL,
   from_date DATE NOT NULL,
   to_date DATE NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
   PRIMARY KEY (emp_no,dept_no)
); 

select * from dept_manager

DROP TABLE dept_emp

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no) ,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM dept_emp;

DROP TABLE titles;

CREATE TABLE titles (
    emp_no      INT NOT NULL,
    title       VARCHAR(50) NOT NULL,
    from_date   DATE NOT NULL,
    to_date     DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no,title, from_date)
); 

SELECT * FROM titles;

DROP TABLE salaries;

CREATE TABLE salaries (
    emp_no      INT  NOT NULL,
    salary      INT  NOT NULL,
    from_date   DATE NOT NULL,
    to_date     DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, from_date)
) ;


select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select* from titles;






































