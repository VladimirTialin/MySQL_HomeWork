CREATE DATABASE WorkerBase;
use WorkerBase;
CREATE TABLE employees
(
id int AUTO_INCREMENT PRIMARY KEY,
name_employess TEXT NOT NULL,
salary FLOAT NOT NULL,
date_salary DATE NOT NULL,
post TEXT NOT NULL
);
INSERT employees (name_employess, date_salary, post, salary)
VALUES
("Sergey", 20221015, "sales manager", 150000),
("Sergey", 20221016, "worker", 50000),
("Sergey", 20221016, "accounter", 120000),
("Natali", 20221015, "manager", 250000),
("Natali", 20221016, "ceo", 350000),
("Natali", 20221017, "chef", 80000),
("Vladimir", 20221015, "sales manager", 160000),
("Vladimir", 20221016, "manager", 270000),
("Vladimir", 20221017, "hr", 110000);
# DROP TABLE employees;
select name_employess, count(*) as em from employees group by name_employess;
select name_employess, count(*) as em From employees where salary > 100000 group by name_employess;
SELECT name_employess, COUNT(*) as em 
FROM employees WHERE salary> 100000 GROUP BY name_employess;
SELECT name_employess, COUNT(*) as em FROM employees
WHERE salary > 100000 
GROUP BY name_employess
HAVING COUNT(*) > 2;
SELECT name_employess, COUNT(*) as em FROM employees
WHERE salary > 100000 
GROUP BY name_employess
HAVING SUM(salary) > 300000;

SELECT post,
SUM(salary) as em,
COUNT(*) as position
FROM employees
GROUP BY post
order by position, em desc;


select *
from employees
limit 100 offset 4;
