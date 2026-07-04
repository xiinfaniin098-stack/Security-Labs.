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



--Task 1. Generate output with the echo command
echo hello

echo "hello"

echo "Mohamed Abdullahi"

--Task 2. Generate output with the expr command
expr 32 - 8

expr 3500 * 12

--Task 3. Clear the Bash shell
clear

# ----------------------------------------------------------------------------------------------------------------------------------------
# SECTION 2: SYSTEM NAVIGATION, DIRECTORY AUDITING & LOG INSPECTION 
# Objective: Navigate the Linux file system, to locate, isolate, and inspect critical security logs and user access files.
# ----------------------------------------------------------------------------------------------------------------------------------------

#--Task 1. Get the current directory information
# context: Veryfying the current working directory path to establish a baseline before a system traversal.
pwd
ls

#--Task 2. Change directory and list the subdirectories
# Context: Traversing to the 'reports' directory using a relative path to audit available subfolders.
cd reports

# Absolute Path Alternative:
# Demonstrating the use of an absolute path to directly target the security reports repository.
cd /home/analyst/reports

# List the contents to audit files and subdirectories within reports directory
ls

#--Task 3. Locate and read the contents of a file
# Context: Navigate deep into the user subdirectory to inspect access records.
cd /home/analyst/reports/users
cd users
ls
# Analysis: At this stage, the 'Q1_added_usres.txt' file is isolated for credential auditing.


#--Task 4. Navigate to a directory and locate a file
# Context: Moving to the core logs repository to investigate operational system logs.
cd /home/analyst/logs
ls
#--Display the first 10 lines of this file.
# Context: Utilizing the 'head'utility to inspect the top 10 log entries of 'server_logs.txt'
# for rapid triage of recent system events or errors.
head server_logs.txta
