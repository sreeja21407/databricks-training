-- SQL PRACTICE  --

-- Display all employees --
SELECT * FROM Employee;

-- Display employees with salary greater than 50,000 --
SELECT * FROM Employee
WHERE salary > 50000;

-- Show employees from IT department --
SELECT * FROM Employee
WHERE department_id = 1;

-- Display employee names and salaries in ascending order --
SELECT name, salary FROM Employee
ORDER BY salary ASC;

-- Count total number of employees --
SELECT COUNT(*) AS total_employees FROM Employee;

-- Find average salary of employees --
SELECT AVG(salary) AS avg_salary FROM Employee;

-- Find highest salary --
SELECT MAX(salary) AS highest_salary FROM Employee;

-- Find lowest salary --
SELECT MIN(salary) AS lowest_salary FROM Employee;

-- Find employees who don’t belong to any department --
SELECT * FROM Employee
WHERE department_id IS NULL;

-- Display employee name with department name (INNER JOIN) --
SELECT e.name, d.name AS department
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;

-- Display all employees even if they don’t have department (LEFT JOIN) --
SELECT e.name, d.name AS department
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- Find number of employees in each department --
SELECT department_id, COUNT(*) AS total
FROM Employee
GROUP BY department_id;

-- Display departments with more than 2 employees --
SELECT department_id, COUNT(*) AS total
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Find employees hired after 2020 --
SELECT * FROM Employee
WHERE hire_date > '2020-01-01';

-- Find employees hired before 2020 --
SELECT * FROM Employee
WHERE hire_date < '2020-01-01';

-- Find employees hired in 2021 --
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2021;

-- Find employees with names starting with 'A' --
SELECT * FROM Employee
WHERE name LIKE 'A%';

-- Find employees with names ending with 'n' --
SELECT * FROM Employee
WHERE name LIKE '%n';

-- Find employees whose name contains 'a' --
SELECT * FROM Employee
WHERE name LIKE '%a%';

-- Find employees with salary between 40000 and 60000 --
SELECT * FROM Employee
WHERE salary BETWEEN 40000 AND 60000;

-- Find employees from multiple departments (1,2,3) --
SELECT * FROM Employee
WHERE department_id IN (1,2,3);

-- Find employees not in department 1 (handle NULL also) --
SELECT * FROM Employee
WHERE department_id <> 1 OR department_id IS NULL;

-- Find second highest salary --
SELECT MAX(salary)
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Find third highest salary --
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Display employees whose salary is above average --
SELECT * FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Display employees whose salary is below average --
SELECT * FROM Employee
WHERE salary < (SELECT AVG(salary) FROM Employee);

-- Find total salary of all employees --
SELECT SUM(salary) AS total_salary FROM Employee;

-- Find total salary per department --
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- Find average salary per department --
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;

-- Find highest salary in each department --
SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id;

-- Find departments with average salary greater than 50000 --
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 50000;

-- Display employees sorted by age descending --
SELECT * FROM Employee
ORDER BY age DESC;

-- Display employees sorted by hire date --
SELECT * FROM Employee
ORDER BY hire_date;

-- Count employees hired each year --
SELECT YEAR(hire_date) AS year, COUNT(*) AS total
FROM Employee
GROUP BY YEAR(hire_date);

-- Find employees older than 30 --
SELECT * FROM Employee
WHERE age > 30;

-- Find youngest employee --
SELECT * FROM Employee
WHERE age = (SELECT MIN(age) FROM Employee);

-- Find oldest employee --
SELECT * FROM Employee
WHERE age = (SELECT MAX(age) FROM Employee);

-- Find employees with NULL salary --
SELECT * FROM Employee
WHERE salary IS NULL;

-- Find employees without projects (no project_id column → skip or adjust) --
-- (Your schema doesn't have project_id in Employee, so this query is invalid)

-- Display employee and project name (via department) --
SELECT e.name AS employee, p.name AS project
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- Display all projects even without employees --
SELECT p.name AS project, e.name AS employee
FROM Project p
LEFT JOIN Employee e
ON p.department_id = e.department_id;

-- Find department with highest average salary --
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC
LIMIT 1;

-- Find department with most employees --
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Find employees earning more than department average --
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Find employees with same hire date as another employee --
SELECT *
FROM Employee
WHERE hire_date IN (
    SELECT hire_date
    FROM Employee
    GROUP BY hire_date
    HAVING COUNT(*) > 1
);

-- Find duplicate salaries --
SELECT salary, COUNT(*) AS count
FROM Employee
GROUP BY salary
HAVING COUNT(*) > 1;

-- Find employees working in departments with more than 2 employees --
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 2
);