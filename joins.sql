CREATE TABLE department (
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE employee (
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(50),
	salary INT,
	dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO department VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employee VALUES
(101, 'John', 3000, 1),
(102, 'Alice', 5000, 2),
(103, 'Bob', 4000, 2),
(104, 'David', 3500, 3);

SELECT * FROM 
employee e INNER JOIN department d 
ON e.dept_id=d.dept_id;

CREATE VIEW emp_view AS
SELECT emp_name, salary
FROM employee
WHERE salary > 3000;

SELECT * FROM emp_view;

SELECT emp_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT e.emp_name, d.dept_name, e.salary
FROM employee e
JOIN department d
ON e.dept_id = d.dept_id
WHERE e.salary > (SELECT AVG(salary) FROM employee);

