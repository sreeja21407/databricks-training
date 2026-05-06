-- SQL PRACTICE --

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

-- Find employees who don’t belong to any department --
SELECT * FROM Employee
WHERE department_id IS NULL;

-- Display employee name with department name (INNER JOIN) --
SELECT e.name, d.name AS department
FROM Employee e
JOIN Department d
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

-- Find second highest salary --
SELECT MAX(salary)
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Display employees whose salary is above average --
SELECT * FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);