--CREATE DEPT table 
CREATE table departments
(
    dept_no varchar(20) Primary key,
    dept_name varchar(20)
)

--Create Employee table 
Create table employees
(
emp_no int Primary Key,
birth_date date,
first_name varchar(20),
last_name varchar(20),
gender varchar(1),
hire_date date
)

--Crete Employee table 
CREATE TABLE dept_emp
(
    emp_no int ,
    dept_no varchar(10),
    from_date date,
    to_date date,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
)
--Create table deparment Manager
Create table dept_manager
(
    dept_no varchar(20),
    emp_no int Primary Key,
    from_date date,
    to_date date,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
)
--Create Salary tables 
Create table Salary
(
    emp_no int ,
    salary int ,
    from_date date,
    to_date date ,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
)
--Create title table
Create table titles
(
 emp_no int ,
 title varchar(20),
 from_date date,
 to_date date,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

)