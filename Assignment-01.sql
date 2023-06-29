# Assignment-01
CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

--Question-1
SELECT FIRST_NAME AS WORKER_NAME FROM Worker

--Question-2
SELECT * FROM WORKER
SELECT distinct DEPARTMENT from Worker

--Question-3
SELECT SUBSTRING(FIRST_NAME, 1, 3) AS FirstThreeCharacters, LENGTH(FIRST_NAME) AS NameLength FROM Worker;

--Question-4
SELECT * FROM WORKER
SELECT distinct DEPARTMENT, LENGTH(DEPARTMENT) AS DepartmentLength FROM Worker;

--Question-5
SELECT * FROM WORKER
 order by FIRST_NAME asc, DEPARTMENT DESC;
 
 --Question-6
 select * from worker where department = "admin";
 
 --Question-7
  select * from worker where salary between 100000 and 500000;
 
  --Question-8
select * from worker where salary >= 50000 and salary <= 100000

 --Question-9
SELECT * FROM (
    SELECT *, ROW_NUMBER() OVER () AS RowNumber
    FROM Worker
) AS Subquery
WHERE RowNumber % 2 = 0;


--Question-10

SELECT * FROM Worker
WHERE MONTH(JOINING_DATE) = 2 AND YEAR(JOINING_DATE) = 2014;