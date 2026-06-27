SELECT * FROM log_in_attempts WHERE event_id >= 100;								
SELECT * FROM log_in_attempts WHERE event_id BETWEEN 100 AND 150;

	--Google Cybersecurity Certificate: 	
Aply More Filters in SQL
--Step 1: Filter login attempts with an event ID greater than or equal to 100.
SELECT * FROM log_in_attempts WHERE event_id >= 100;

Step 2:  Filter login attempts with an event ID between 100 and 150.
SELECT * FROM log_in_attempts WHERE event_id BETWEEN 100 AND 150;


1-- Retrieve after hours failed login attempts
SELECT * FROM log_in_attempts WHERE login_time > '18:00' AND success = 0;

2--Retrieve login attempts on specific dates
SELECT * FROM log_in_attempts WHERE login_date = '2022-05-08' OR login_date = '2022-05-09';

3-- Retrieve login attempts outside of Mexico
SELECT * FROM log_in_attempts WHERE NOT country LIKE 'MEX%';
4--Retrieve employees in Marketing
 SELECT * FROM employees WHERE department = 'Marketing' AND office LIKE 'East%';

5-- Retrieve employees in Finance or Sales
SELECT * FROM employees WHERE department = 'Finance' OR department = 'Sales';

--Retrieve all employees not in IT
 SELECT * FROM employees WHERE NOT department = 'Information Technology';

 SQL JOINS
 --Task 1. Match employees to their machines
SELECT * FROM machines;

 --Task 1. Match employees to their machines
SELECT * FROM machines INNER JOIN employees ON machines.device_id = employees.device_id;

	LEFT JOIN and RIGHT JOIN
 --Task 2. Return more data
SELECT * FROM machines LEFT JOIN employees ON machines.device_id = employees.device_id;

SELECT * FROM machines RIGHT JOIN employees ON machines.device_id = employees.device_id;

--Task 3. Retrieve login attempt data
SELECT * FROM employees INNER JOIN log_in_attempts ON  employees.username = log_in_attempts.username;

