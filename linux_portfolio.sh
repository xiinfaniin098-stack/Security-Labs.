#!/bin/bash

# ==============================================================================
# SECTION 1: LINUX PACKAGE MANAGEMENT & SECURITY TOOL PROVISIONING
# Objective: Utilize the Advanced Package Tool (APT) to safely manage, install,
#            and audit network security tools on the system.
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Ensure that APT is installed
# Context: Verifying the system's package manager is responsive before executing 
#          installation routines.
# ------------------------------------------------------------------------------
apt

# ------------------------------------------------------------------------------
# Task 2. Install and uninstall the Suricata application
# Context: Provisioning Suricata for network intrusion detection, followed by an 
#          authorized cleanup removal.
# ------------------------------------------------------------------------------
sudo apt install suricata 
sudo apt remove suricata

# ------------------------------------------------------------------------------
# Task 3. Install the tcpdump application
# Context: Installing a command-line packet analyzer for live network traffic 
#          sniffing and troubleshooting.
# ------------------------------------------------------------------------------
sudo apt install tcpdump

# ------------------------------------------------------------------------------
# Task 4. List the installed applications
# Context: Auditing active system packages to confirm the presence of required 
#          security tools.
# ------------------------------------------------------------------------------
sudo apt list --installed

# ------------------------------------------------------------------------------
# Task 5. Reinstall the Suricata application
# Context: Redeploying the intrusion detection system and executing a final audit 
#          to verify success.
# ------------------------------------------------------------------------------
sudo apt install suricata
apt list --installed

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------



# ==============================================================================
# SECTION 2: BASIC TEXT PIPING, ARITHMETIC LOGIC & ENVIRONMENT HOUSEKEEPING
# Objective: Utilize core shell built-ins to output string literals, perform 
#            low-level arithmetic calculations, and manage workspace visibility.
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Generate output with the echo command
# Context: Printing unquoted, quoted, and customized string literals to the 
#          standard output (stdout) for debugging or scripting variables.
# ------------------------------------------------------------------------------
echo hello
echo "hello"
echo "Mohamed Abdullahi"

# ------------------------------------------------------------------------------
# Task 2. Generate output with the expr command
# Context: Evaluating mathematical expressions directly inside the shell to 
#          calculate resource metrics or dynamic values.
# ------------------------------------------------------------------------------
expr 32 - 8
expr 3500 \* 12

# ------------------------------------------------------------------------------
# Task 3. Clear the Bash shell
# Context: Resetting the terminal workspace viewport to maintain visual clarity 
#          during active security monitoring or log analysis.
# ------------------------------------------------------------------------------
clear

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------------------------
# SECTION 3: SYSTEM NAVIGATION, DIRECTORY AUDITING & LOG INSPECTION 
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

# ==============================================================================
# SECTION 4: ADVANCED LOG INSPECTION & PATTERN MATCHING WITH GREP
# Objective: Investigate system logs and user directory contents to isolate potential security issues.
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Search for error messages in a log file
# Context: Navigating to the logs folder to audit system behavior and pinpoint anomalies.
# ------------------------------------------------------------------------------
cd logs
grep error server_logs.txt

# ------------------------------------------------------------------------------
# Task 2. Find files containing specific strings
# Context: Moving to the user reports directory to filter file names associated with specific timelines or access records.
# ------------------------------------------------------------------------------
cd /home/analyst/reports/users
ls | grep Q1
ls | grep access

# ------------------------------------------------------------------------------
# Task 3. Search more file contents
# Context: Querying targeted text files to find traces of specific deleted users or department modifications.
# ------------------------------------------------------------------------------
ls
grep jhill Q2_deleted_users.txt
grep "Human Resources" Q4_added_users.txt

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------
