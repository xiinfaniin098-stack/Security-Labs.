[15:44, 16/07/2026] Mohamed Abdullahi Yussuf: # Security Operations Center (SOC) Practical Labs

Welcome to my security portfolio. This repository documents my hands-on technical labs focusing on system administration, database security, and cryptography.

---

## 📁 Portfolio Directory

### 🖥️ 1. Linux Security & Bash Scripting
* *Objective:* Automating user audits and managing file system security.
* *Core File:* linux_portfolio.sh
* *Skills:* Bash scripting, user permissions, automation.

### 🔍 2. SQL Log Analysis & Auditing
* *Objective:* Querying database logs to identify login failures and security events.
* *Core File:* sql_log_analysis.sql
* *Skills:* Relational databases, data filtering, log investigation.

### 🔑 3. Cryptography & Key Recovery (Course 5)
* *Objective:* Decrypting intercepted files …
[16:49, 16/07/2026] Mohamed: # Course 5: Cryptography & Key Recovery

## Caesar Cipher Decryption Lab

### Objective
To decrypt an intercepted ciphertext file using standard command-line tools and recover the original plaintext message.

### Tools Used
* Linux Terminal / Bash Shell
* OpenSSL / Caesar decryption utilities

### Step-by-Step Execution
1. *Locate the Intercepted File*: Found the encrypted ciphertext file in the local working directory.
2. *Analyze the Cipher*: Determined a shift cipher (Caesar cipher) was used to obscure the plaintext.
3. *Run Decryption Script/Command*: Executed the decryption tool with the correct key shift value to reverse-engineer the letters.
4. *Verify Plaintext*: Successfully outputted the decrypted, readable English text to the terminal.

### Proof of Completion
Below is the screenshot confirming the successful decryption and key recovery:

![Decryption Success](images/caesar_decrytion_success.png)
