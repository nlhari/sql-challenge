CREATE TABLE employees (
    emp_no integer PRIMARY KEY,
    birth_date date NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    gender char(1) NOT NULL,
    hire_date date NOT NULL
)

CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(50) NOT NULL
)

CREATE TABLE dept_emp (
    emp_no integer references employees(emp_no),
    dept_no varchar(5) references departments(dept_no),
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE dept_manager (
    dept_no varchar(5) references departments(dept_no),
    emp_no integer references employees(emp_no),
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE salaries (
    emp_no integer references employees(emp_no),
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE titles (
    emp_no integer references employees(emp_no),
    title varchar(50) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);