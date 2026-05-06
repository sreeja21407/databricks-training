SQL Practice Queries (Employee-Department-Project Database)

Overview

This repository contains 65 structured SQL queries designed to practice and strengthen core database concepts using a sample schema consisting of:

- Employee table
- Department table
- Project table

These queries cover basic to advanced SQL topics, making it ideal for interview preparation, academic learning, and hands-on practice.

---

Database Schema

Employee Table

- emp_id (Primary Key)
- name
- age
- salary
- department_id (Foreign Key)
- hire_date

Department Table

- department_id (Primary Key)
- name

Project Table

- project_id (Primary Key)
- name
- department_id (Foreign Key)

---

Topics Covered

Basic Queries

- Selecting all columns and specific columns
- Filtering using WHERE
- Pattern matching (LIKE)
- String functions (CHAR_LENGTH)

Date Functions

- Filtering by year, month, range
- Using CURDATE() and DATE_SUB()

Aggregate Functions

- SUM(), AVG(), MIN(), MAX(), COUNT()

GROUP BY and HAVING

- Grouping data by departments
- Filtering grouped results

Sorting

- ORDER BY (ascending and descending)
- Multi-column sorting

Joins

- INNER JOIN
- LEFT JOIN
- Multi-table queries

Subqueries

- Scalar subqueries
- Correlated subqueries
- Nested queries

Advanced Queries

- Nth highest salary (2nd, 3rd)
- Department-wise comparisons
- Employees above department average
- Departments with no employees
- Employees without projects

---

Query Breakdown

Range| Description
1 – 15| Basic selection and filtering
16 – 30| Aggregation and grouping
31 – 35| Sorting
36 – 43| Joins
44 – 65| Subqueries and advanced logic

---

How to Use

1. Create the tables (Employee, Department, Project)
2. Insert sample data
3. Run queries sequentially or topic-wise
4. Modify queries to experiment and learn

---

Learning Outcomes

After completing these queries, you will be able to:

- Write efficient SQL queries
- Understand relationships between tables
- Use joins and subqueries confidently
- Solve real-world database problems
- Prepare for technical interviews

---

