# Write your MySQL query statement below
WITH cte AS (
    SELECT
        e1.name AS name,
        e1.salary,
        e2.name AS department_name
    FROM Employee e1
    JOIN Department e2 ON e1.departmentId = e2.id
)
SELECT name as  Employee , salary as  Salary  ,department_name as Department
FROM (
    SELECT
        name,
        salary,
        department_name,
        DENSE_RANK() OVER (PARTITION BY department_name ORDER BY salary DESC) AS `rank`
    FROM cte
) AS ranked
WHERE `rank` <= 3;


