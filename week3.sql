CREATE TABLE Employee(
	empno INT, 
	ename VARCHAR(10), 
	job VARCHAR(10), 
	MGR INT, 
	Hiredate DATE, 
	sal INT, 
	comm INT, 
	deptno INT
);

INSERT INTO Employee VALUES(7839,'king','president',7839,DATE('1981-11-17'),NULL,5200,10),
(7698,'blake','manager',7839,DATE('1981-05-01'),2850,NULL,30),(7782,'clark','manager',7839,DATE('1981-06-09'),2450,NULL,10),
(7782,'jones','manager',7839,DATE('1981-04-02'),2975,NULL,20),(7654,'martin','salesman',7698,DATE('1981-09-28'),1250,NULL,30),
(7499,'allen','salesman',7698,DATE('1981-02-20'),1600,300,30),(7844,'turner','salesman',7698,DATE('1981-08-08'),1500,0,30),
(7900,'james','clerk',7698,DATE('1981-12-03'),950,NULL,30),
(7521,'ward','salesman',7698,DATE('1981-02-22'),1250,500,30),(7902,'ford','analyst',7566,DATE('1981-12-03'),3000,NULL,30),
(7369,'smith','clerk',7902,DATE('1980-12-17'),800,NULL,20),
(7788,'scott','analyst',7566,DATE('1982-12-09'),3000,NULL,20),
(7876,'adams','clerk',7788,DATE('1983-01-12'),1100,NULL,10),(7934,'miller','clerk',7782,DATE('1982-01-23'),1300,NULL,10);

SELECT MIN(sal) FROM Employee;

SELECT MAX(sal) FROM Employee;

SELECT COUNT(*) FROM Employee;

SELECT COUNT(DISTINCT sal) FROM Employee;

SELECT COUNT(DISTINCT job) FROM Employee;

SELECT AVG(sal) FROM Employee;

RENAME TABLE Employee to emp;

CREATE TABLE dept(deptno INT, dname VARCHAR(30), loc VARCHAR(30));

INSERT INTO dept VALUES(10,'ABC','PQR'),(20,'DEF','UVW'),(30,'GHI','XYZ');

SELECT SUM(sal) FROM emp;

SELECT deptno, AVG(sal) FROM emp GROUP BY deptno;

SELECT COUNT(*) FROM emp;

SELECT deptno, MAX(sal) FROM emp GROUP BY deptno;

SELECT UPPER(ename) FROM emp;

SELECT LOWER(ename) FROM emp;

SELECT ename, LENGTH(ename) FROM emp;

SELECT SUBSTRING(ename,1,3) FROM emp;

SELECT ROUND(sal,-2) FROM emp;

SELECT MOD(sal,1000) FROM emp;

SELECT MAX(sal) FROM emp;

SELECT MIN(sal) FROM emp;

SELECT SYSDATE();

SELECT ename, hiredate FROM emp;

SELECT FLOOR(DATEDIFF(hiredate,SYSDATE())/30) FROM emp;

SELECT CAST(sal as CHAR) FROM emp;

CREATE TABLE bonus(empno INT, bonus INT);

ALTER TABLE bonus ADD email VARCHAR(30);

DROP TABLE bonus;

INSERT INTO emp VALUES(101,'Ram','Clerk',7902,SYSDATE(),3000,NULL,10);

UPDATE emp SET sal = sal+500 WHERE empno=101;

DELETE FROM emp where empno=101;

