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

# ==============================================================================
# SECTION 6: FILE SYSTEM MANIPULATION, DIRECTORY PROVISIONING & TEXT EDITING
# Objective: Create, move, remove, and modify critical files and directories 
#            while maintaining a verified audit trail using directory listings.
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Create a new directory
# Context: Provisioning a dedicated directory to isolate and store newly generated
#          system or application logs.
# ------------------------------------------------------------------------------
mkdir logs
ls

# ------------------------------------------------------------------------------
# Task 2. Remove a directory
# Context: Performing system cleanup by permanently deleting empty temporary 
#          directories no longer required by the analyst environment.
# ------------------------------------------------------------------------------
rmdir temp
ls

# ------------------------------------------------------------------------------
# Task 3. Move a file
# Context: Navigating the home workspace to securely relocate patches and incident
#          reports into the designated central reporting repository.
# ------------------------------------------------------------------------------
cd /home/analyst/notes
mv Q3patches.txt /home/analyst/reports/
ls /home/analyst/reports

# ------------------------------------------------------------------------------
# Task 4. Remove a file
# Context: Securely deleting obsolete notes and temporary configuration items 
#          to minimize clutter in active work zones.
# ------------------------------------------------------------------------------
rm tempnotes.txt
ls

# ------------------------------------------------------------------------------
# Task 5. Create a new file
# Context: Initializing a fresh text file via the touch command to begin logging
#          completed baseline operations.
# ------------------------------------------------------------------------------
touch tasks.txt
ls

# ------------------------------------------------------------------------------
# Task 6. Edit and view a file
# Context: Launching the Nano editor to record procedural updates, clearing the
#          viewport viewport, and printing the payload via standard output.
# ------------------------------------------------------------------------------
# Inside the editor, add the following text:
# Completed tasks
# 1. Managed file structure in /home/analyst

nano tasks.txt
clear
cat tasks.txt

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------

# ==============================================================================
# SECTION 7: ACCESS CONTROL MANAGEMENT & FILE SYSTEM SYSTEM HARDENING
# Objective: Audit, identify, and remediate loose file and directory permissions 
#            to enforce the Principle of Least Privilege (PoLP).
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Check file and directory details
# Context: Performing a detailed long-format directory listing, including hidden 
#          system files, to map out existing user, group, and other permissions.
# ------------------------------------------------------------------------------
cd projects
ls -l
ls -la

# ------------------------------------------------------------------------------
# Task 2. Change file permissions
# Context: Removing unauthorized write permissions from 'others' on project_k.txt
#          and stripping read permissions from the 'group' on project_m.txt.
# ------------------------------------------------------------------------------
ls -l
chmod o-w project_k.txt
ls -l
chmod g-r project_m.txt

# ------------------------------------------------------------------------------
# Task 3. Change file permissions on a hidden file
# Context: Modifying a hidden configuration/project file to strip owner and group 
#          write permissions while extending group read access.
# ------------------------------------------------------------------------------
ls -la
chmod u-w,g-w,g+r .project_x.txt

# ------------------------------------------------------------------------------
# Task 4. Change directory permissions
# Context: Hardening the 'drafts' directory by removing group execute (traversal) 
#          rights to secure sensitive preliminary data.
# ------------------------------------------------------------------------------
ls -l 
chmod g-x drafts

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------

# ==============================================================================
# SECTION 8: IDENTITY & ACCESS MANAGEMENT (IAM) AND ACCOUNT PROVISIONING
# Objective: Administer user lifecycles, modify primary/supplementary groups, 
#            and reassign asset ownership according to internal security policies.
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Add a new user
# Context: Creating a new system account for personnel onboarding and assigning 
#          them directly to their designated primary research department group.
# ------------------------------------------------------------------------------
sudo useradd researcher9 -g research_team

# ------------------------------------------------------------------------------
# Task 2. Assign file ownership
# Context: Explicitly modifying asset permissions via chown to ensure only the 
#          assigned researcher holds administrative ownership of project data.
# ------------------------------------------------------------------------------
sudo chown researcher9 /home/researcher2/projects/project_r.txt

# ------------------------------------------------------------------------------
# Task 3. Add the user to a secondary group
# Context: Appending a supplementary group membership to grant cross-departmental 
#          access without overwriting the user's primary group structural alignment.
# ------------------------------------------------------------------------------
sudo usermod -a -G sales_team researcher9

# ------------------------------------------------------------------------------
# Task 4. Delete a user
# Context: Offboarding personnel by completely purging the user account and 
#          associated distinct groups from the system to mitigate stale account risks.
# ------------------------------------------------------------------------------
sudo userdel researcher9
sudo groupdel researcher9

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------

# ==============================================================================
# SECTION 9: SHELL DOCUMENTATION AUDITING & IN-SYSTEM COMMAND DISCOVERY
# Objective: Utilize built-in help facilities, manual pages, and keyword indexing
#            to research command syntax, options, and operational differences.
# ==============================================================================

# ------------------------------------------------------------------------------
# Task 1. Learn more about commands
# Context: Querying brief descriptions via whatis, opening the core reference manual 
#          via man, and performing keyword searches to isolate tools handling files.
# ------------------------------------------------------------------------------
whatis cat
man cat
apropos -a "first part file"

# ------------------------------------------------------------------------------
# Task 2. Explore the useradd command
# Context: Loading the full reference manual page for account provisioning tools 
#          to audit available flags, configuration variables, and default switches.
# ------------------------------------------------------------------------------
man useradd

# ------------------------------------------------------------------------------
# Task 3. Explore the rm and rmdir commands
# Context: Executing side-by-side brief definition lookups to isolate differences 
#          between file unlinking tools and empty directory deletion utilities.
# ------------------------------------------------------------------------------
whatis rm
whatis rmdir

# ------------------------------------------------------------------------------
# Task 4. Determine which command to use
# Context: Conducting a precise multi-keyword index search via apropos to isolate 
#          the exact system administrative command required to establish a new group.
# ------------------------------------------------------------------------------
apropos -a create new group

# ------------------------------------------------------------------------------
# End of Section
# ------------------------------------------------------------------------------
