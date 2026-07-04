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




