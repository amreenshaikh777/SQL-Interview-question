use sql_practice;
Truncate table Employee;
Create table  Employee (id int, name varchar(255), salary int, departmentId int);
insert into Employee (id, name, salary, departmentId) values ('1', 'Joe', '70000', '1');
insert into Employee (id, name, salary, departmentId) values ('2', 'Jim', '90000', '1');
insert into Employee (id, name, salary, departmentId) values ('3', 'Henry', '80000', '2');
insert into Employee (id, name, salary, departmentId) values ('4', 'Sam', '60000', '2');
insert into Employee (id, name, salary, departmentId) values ('5', 'Max', '90000', '1');
Create table Department (id int, name varchar(255));
insert into Department (id, name) values ('1', 'IT');
insert into Department (id, name) values ('2', 'Sales');

## Write a solution to find employees who have the highest salary in each of the departments.
##Return the result table in any order.

Select * From Employee;
Select * From Department;
#Solution 1 Group BY
SELECT department.name,employee.name,salary 
FROM  employee 
JOIN department ON employee.departmentid = department.id
WHERE  (departmentid,salary) IN(SELECT departmentid,max(salary) AS salary 
FROM employee GROUP BY departmentid);

#Solution 2 

    





