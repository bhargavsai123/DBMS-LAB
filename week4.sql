
USE sys;

CREATE TABLE IF NOT EXISTS Students(
	id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    branch VARCHAR(5) NOT NULL,
    cgpa DECIMAL(4,2) NOT NULL
);

INSERT IGNORE INTO Students (id, name, branch, cgpa) VALUES
(101, 'Arjun Reddy', 'CSE', 9.70),
(102, 'Ananya Reddy', 'CSE', 9.15),
(103, 'Rahul Varma', 'ECE', 8.62),
(104, 'Sneha Sharma', 'EEE', 8.95),
(105, 'Karthik R', 'MECH', 7.88),
(106, 'Divya Nair', 'IT', 9.02),
(107, 'Arjun Patel', 'CSE', 8.45),
(108, 'Meghana Rao', 'AIML', 9.32),
(109, 'Siddharth Kumar', 'CIVIL', 7.76),
(110, 'Pooja Desai', 'ECE', 8.84),
(111, 'Vamsi Krishna', 'AIML', 9.05),
(112, 'Harika Reddy', 'IT', 8.67),
(113, 'Manoj Kumar', 'MECH', 7.54),
(114, 'Lavanya S', 'CSE', 9.21),
(115, 'Aditya Singh', 'EEE', 8.11);

SELECT * FROM Students;

# GROUP BY, HAVING, ORDER BY

SELECT branch, COUNT(*) as total_students, AVG(cgpa) as avg_cgpa FROM Students GROUP BY branch ORDER BY avg_cgpa DESC;

SELECT FLOOR(cgpa) as cgpa_group, COUNT(*) as total_students, MIN(cgpa), MAX(cgpa) FROM Students GROUP BY cgpa_group;

SELECT branch, AVG(cgpa) as avg_cgpa FROM Students GROUP BY branch HAVING avg_cgpa > 9 ORDER BY avg_cgpa;

# Set Operations

SELECT cgpa FROM Students WHERE cgpa > 9 UNION SELECT AVG(cgpa) as avg_cgpa FROM Students GROUP BY branch HAVING avg_cgpa > 9;

SELECT cgpa FROM Students WHERE cgpa > 9 UNION ALL SELECT cgpa FROM Students WHERE cgpa > 9.5 ;

SELECT cgpa FROM Students WHERE cgpa > 9 EXCEPT SELECT cgpa FROM Students WHERE cgpa > 9.5;

SELECT cgpa FROM Students WHERE cgpa > 9 INTERSECT SELECT cgpa FROM Students WHERE cgpa > 9.5;

# TCL Commands

start transaction;

SELECT cgpa FROM Students WHERE id = 101;

savepoint s1;

UPDATE Students SET cgpa = 10 WHERE id = 101;
SELECT cgpa FROM Students WHERE id = 101;

savepoint s2;

UPDATE Students SET cgpa = 0 WHERE id = 101;
SELECT cgpa FROM Students WHERE id = 101;

rollback to s2;

SELECT cgpa FROM Students WHERE id = 101;

rollback to s1;

SELECT cgpa FROM Students WHERE id = 101;

