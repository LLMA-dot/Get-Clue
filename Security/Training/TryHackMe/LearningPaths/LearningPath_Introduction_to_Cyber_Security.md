# TryHackMe.com Introduction to Cyber Security Learning Path

Cyber Security is a huge topic, and it can be challenging to know where to start. This path will give you a hands-on introduction to different areas within cyber, including:

-Careers in Cyber Security
-Offensive Security; hacking your first application
-Defensive Security; defending against a live cyber attack
-Exploring security topics in the industry
-Completing this learning path will give you the knowledge to kick start your cyber journey.

## Table of Contents

01. [Intro to Offensive Security](#intro-to-offensive-security)<br>
02. [Intro to Defensive Security](#intro-to-defensive-security)<br>
03. [Careers in Cyber](#careers-in-cyber)<br>
04. [Web Application Security](#web-application-security)<br>
05. [Operating System Security](#operating-system-security)<br>
06. [Network Security](#network-security)<br>

# Introduction to Cyber Security

> Understand what is offensive and defensive security, and learn about careers available in cyber.

## Intro to Offensive Security

> Hack your first website (legally in a safe environment) and experience an ethical hacker's job.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: What is Offensive Security? | Which of the following options better represents the process where you simulate a hacker's actions to find vulnerabilities in a system? Offensive Security OR Defensive Security | Offensive Security |
|Task 2: Hacking your first machine | Above your account balance, you should now see a message indicating the answer to this question. Can you find the answer you need? | BANK-HACKED |
| | If you were a penetration tester or security consultant, this is an exercise you’d perform for companies to test for vulnerabilities in their web applications; find hidden pages to investigate for vulnerabilities. | N/A |
| | Terminate the machine by clicking the red "Terminate" button at the top of the page. | N/A | 
|Task 3: Careers in cyber security | Read the above, and continue with the next room! | N/A |

## Intro to Defensive Security

> Introducing defensive security and related topics, such as threat intelligence, SOC, DFIR, and SIEM.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction to Defensive Security | Which team focuses on defensive security? | Blue Team |
|Task 2: Areas of Defensive Security | What would you call a team of cyber security professionals that monitors a network and its systems for malicious events? | Security Operations Center |
| | What does DFIR stand for? | Digital Forensics and Incident Response |
| | Which kind of malware requires the user to pay money to regain access to their files? | Ransomware |
|Task 3: Practical Example of Defensive Security | What is the flag that you obtained by following along? | THM{THREAT-BLOCKED} |

## Careers in Cyber

> Learn about the different careers in cyber security.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction | Let's start exploring the different roles in cyber security! | N/A |
|Task 2: Security Analyst | Read about what a security analyst does. | N/A |
|Task 3: Security Engineer | Read about what a security engineer does. | N/A |
|Task 4: Incident Responder | Read about what an incident responder does. | N/A |
|Task 5: Digital Forensics Examiner | Read about what a digital forensics examiner does. | N/A |
|Task 6: Malware Analyst | Read about what a malware analyst does. | N/A |
|Task 7: Penetration Tester | Read about what a penetration tester does. | N/A |
|Task 8: Red Teamer | Read about what a red teamer does. | N/A |
|Task 9: Quiz | Complete the careers quiz and share your chosen job! | N/A |

# Introduction to Offensive Security

> Understand what Offensive Security entails, and practice breaking into computer systems by exploiting applications and networks.

## Web Application Security

> Learn about web applications and explore some of their common security issues.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction | What do you need to access a web application? | Browser |
|Task 2: Web Application Security Risks | You discovered that the login page allows an unlimited number of login attempts without trying to slow down the user or lock the account. What is the category of this security risk? | Identification and Authentication Failure |
| | You noticed that the username and password are sent in cleartext without encryption. What is the category of this security risk? | Cryptographic Failures |
|Task 3:  Practical Example of Web Application Security | Check the other users to discover which user account was used to make the malicious changes and revert them. After reverting the changes, what is the flag that you have received? | THM{IDOR_EXPLORED} |

## Operating System Security

> This room introduces users to operating system security and demonstrates SSH authentication on Linux.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction to Operating System Security | 
Which of the following is not an operating system? AIX, Android, Chrome OS,Solaris,Thunderbird | Thunderbird |
|Task 2: Common Examples of OS Security | 
Which of the following is a strong password, in your opinion? iloveyou, 1q2w3e4r5t, LearnM00r, qwertyuiop | LearnM00r |
|Task 3: Practical Example of OS Security | Based on the top 7 passwords, let’s try to find Johnny’s password. What is the password for the user johnny? | abc123 |
| | Once you are logged in as Johnny, use the command history to check the commands that Johnny has typed. We expect Johnny to have mistakenly typed the root password instead of a command. What is the root password? | happyHack!NG |
| | While logged in as Johnny, use the command su - root to switch to the root account. Display the contents of the file flag.txt in the root directory. What is the content of the file? | 

## Network Security

> Learn about network security, understand attack methodology, and practice hacking into a target server.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction | What type of firewall is Windows Defender Firewall? | Host Firewall |
|Task 2: Methodology | 
During which step of the Cyber Kill Chain does the attacker gather information about the target? | Recon |
|Task 3: Practical Example of Network Security | What is the password in the secret.txt file? | ABC789xyz123 |
| | What is the content of the flag.txt in the /root directory? | THM{FTP_SERVER_OWNED} |
| | What is the content of the flag.txt in the /home/librarian directory? | THM{LIBRARIAN_ACCOUNT_COMPROMISED} |

## Intro to Digital Forensics

> Learn about digital forensics and related processes and experiment with a practical example.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction to Digital Forensics | Consider the desk in the photo above. In addition to the smartphone, camera, and SD cards, what would be interesting for digital forensics? | Laptop |
|Task 2: Digital Forensics Process | It is essential to keep track of who is handling it at any point in time to ensure that evidence is admissible in the court of law. What is the name of the documentation that would help establish that? | Chain of custody |
|Task 3: Practical Example of Digital Forensics | Using pdfinfo, find out the author of the attached PDF file. | Ann Gree Shepherd |
| | Using exiftool or any similar tool, try to find where the kidnappers took the image they attached to their document. What is the name of the street? | Milk Street |
| | What is the model name of the camera used to take this photo? | Canon EOS R6 |

## Security Operations

> Learn about Security Operations Center (SOC): its responsibilities, services, and data sources.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction to Security Operations | What does SOC stand for? | Security Operations Center |
| | How many hours a day does the SOC monitor the network? | 24 |
|Task 2: Elements of Security Operations | What does NSM stand for? | Network security monitoring |
|Task 3: Practical Example of SOC | Add the necessary firewall rules to block the ongoing attack. What is the flag that you have received after successfully stopping the attack? | THM{ATTACK_BLOCKED} |

> Completed 28/10/2023 
> Last Updated