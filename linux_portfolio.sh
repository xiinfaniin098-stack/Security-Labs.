#!/bin/bash

# Task 1. Ensure that APT is installed
apt

# Task 2. Install and uninstall the Suricata application
sudo apt install  suricata 

sudo apt remove suricata

# Task 3. Install the tcpdump application
sudo apt install tcpdump

# Task 4. List the installed applications
sudo apt list --installed

# Task 5. Reinstall the Suricata application
sudo apt install suricata
apt list --installed




--Task 1. List all organization machines
SELECT device_id, operating_system 
FROM machines;

--Task 2. Retrieve a list of the machines with OS 2
SELECT device_id, operating_system 
FROM machines 
WHERE operating_system = 'OS 2';

--Task 3. List employees in specific departments
SELECT * 
FROM employees 
WHERE department = 'Finance';

Modify the previous query so that it returns employees who are in the 'Sales' department.
SELECT * 
FROM employees 
WHERE department = 'Sales';

--Task 4. Identify employee machines
1.Write a query to identify which employee uses the office in 'South-109'. (The data must be returned from the office column in the employees table.)
SELECT * 
FROM employees 
WHERE office = 'South-109';

2.Modify the query you used in the previous step so that it returns information on all the employees in the 'South' building. Use the LIKE operator with % in this query.
SELECT * 
FROM employees 
WHERE office LIKE 'South%';
