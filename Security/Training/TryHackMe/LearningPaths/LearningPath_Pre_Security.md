# TryHackMe.Com Pre Security Learning Path

This learning path will teach you the pre-requisite technical knowledge to get started in cyber security. To attack or defend any technology, you have to first learn how this technology works.

The Pre-Security learning path is a beginner friendly and fun way to learn the basics. Your cyber security learning journey starts here!

What follows are the answers to all the rooms related to these modules.

## Table of Contents

01. [Introduction to Cyber Security](#introduction-to-cyber-security)
02. [What is Networking?](#what-is-networking)
03. [Intro to LAN](#intro-to-lan)
04. [OSI Model](#osi-model)
05. [Packets & Frames](#packets--frames)
06. [Extending your Network](#extending-your-network)
07. [DNS in Detail](#dns-in-detail)
08. [HTTP in Detail](#http-in-detail)
09. [How Websites Work](#how-websites-work)<br>
10. [Linux Fundamentals Part 1](#linux-fundamentals-part-1)<br>
11. [Linux Fundamentals Part 2](#linux-fundamentals-part-2)<br>
12. [Linux Fundamentals Part 3](#linux-fundamentals-part-3)<br>
13. [Windows Fundamentals Part 1](#windows-fundamentals-1)<br>
14. [Windows Fundamentals Part 2](#windows-fundamentals-2)

## Introduction to Cyber Security

This module contains the following Rooms:

- Intro to Offensive Security
- Intro to Defensive Security
- Careers in Cyber

> Hack your first website (legally in a safe environment) and experience an ethical hacker's job.

When you've transferred money to your account, go back to your bank account page. What is the answer shown on your bank balance page?
>*BANK-HACKED*

Which team focuses on defensive security?
> Blue Team

What would you call a team of cyber security professionals that monitors a network and its systems for malicious events?
> Security Operations Center

What does DFIR stand for?
> Digital Forensics and Incident Response

Which kind of malware requires the user to pay money to regain access to their files?
> Ransomware

What is the flag that you obtained by following along?
> THM{THREAT-BLOCKED}

## What is Networking?

> Begin learning the fundamentals of computer networking in this bite-sized and interactive module.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: What is Networking? | What is the key term for devices that are connected together? | Network |
| Task 2: What is the Internet | Who invented the World Wide Web? | Tim Berners-Lee |
| Task 3: Identifying Devices on a Network | What does the term "IP" stand for? | Internet Protocol |
| | What is each section of an IP address called? | Octet |
| | How many sections (in digits) does an IP address have? | 4 |
| | What does the term "MAC" stand for? | Media Access Control |
| | Deploy the interactive lab using the "View Site" button and spoof your MAC address to access the site. What is the flag? | THM{YOU_GOT_ON_TRYHACKME} |
| Task 4: Ping (ICMP) | What protocol does ping use? | ICMP
| | What is the syntax to ping 10.10.10.10 | ping 10.10.10.10
| | What flag do you get when you ping 8.8.8.8 | THM{I_PINGED_THE_SERVER} |

## Intro to LAN

> Learn about some of the technologies and designs that power private networks

| Task | Question | Answer |
|------|----------|--------|
| Task 1: Introducing LAN Topologies | What does LAN stand for? | Local Area Network |
| | What is the verb given to the job that Routers perform? | Routing |
| | What device is used to centrally connect multiple devices on the local network and transmit data to the correct location? | Switch |
| | What topology is cost-efficent to set up? | Bus Topology |
| | What topology is expensive to set up and maintain? | Star Topology |
| | Complete the interactive lab attached to this task. What is the flag given at the end? | THM{TOPOLOGY_FLAWS} |
| Task 2: A Primer on Subnetting | What is the technical term for dividing a network up into smaller pieces? | Subnetting |
| | How many bits are in a subnet mask? | 32
| | What is the range of a section (octet) of a subnet mask? | 0-255 |
| | What address is used to identify the start of a network? | Network Address
| | What address is used to identify devices within a network? | Host address
| | What is the name used to identify the device responsible for sending data to another network? | Default Gateway
| Task 3: The ARP Protocol | What does ARP stand for? | Address Resolution Protocol |
| | What category of ARP Packet asks a device whether or not it has a specific IP address? | Request |
| | What address is used as a physical identifier for a device on a network? | MAC Address |
| | What address is used as a logical identifier for a device on a network? | IP Address |
| Task 4: The DHCP Protocol | What type of DHCP packet is used by a device to retrieve an IP address? | DHCP Discover |
| | What type of DHCP packet does a device send once it has been offered an IP address by the DHCP server? | DHCP Request |
| | Finally, what is the last DHCP packet that is sent to a device from a DHCP server? | DHCP ACK |

## OSI Model

> Learn about the fundamental networking framework that determines the various stages in which data is handled across a network

| Task | Question | Answer |
|------|----------|--------|
| Task 1: What is the OSI Model? | What does the "OSI" in "OSI Model" stand for? | Open Systems Interconnection |
| | How many layers (in digits) does the OSI model have? | 7 |
| | What is the key term for when pieces of information get added to data? | Encapsulation |
| Task 2: Layer 7 - Application | What is the name of this Layer? | Application |
| | What is the technical term that is given to the name of the software that users interact with? | Graphical User Interface |
| Task 3: Layer 6 - Presentation | What is the name of this Layer? | Presentation |
| | What is the main purpose that this Layer acts as? |Translator |
| Task 4: Layer 5 - Session | What is the name of this Layer? | Session |
| | What is the technical term for when a connection is successfully established? |Session |
| | What is the technical term for "small chunks of data"? |Packets |
| Task 5: Layer 4 - Transport | What is the name of this Layer? |Transport |
| | What does TCP stand for? | Transport Control Protocol |
| | What protocol guarantees the accuracy of data? | TCP |
| | What protocol doesn't care if data is received or not by the other device? | UDP |
| | What protocol would an application such as an email client use? |TCP |
| | What protocol would an application that downloads files use? |TCP |
| | What protocol would an application that streams video use? | UDP |
| Task 6: Layer 3 - Network | What is the name of this Layer? | Network |
| | Will packets take the most optimal route across a network? (Y/N)| Y |
| | What does the acronym "OSPF" stand for? | Open Shortest Path First |
| | What does the acronym "RIP" stand for? | Routing Information Protocol |
| | What type of addresses are dealt with at this layer? | IP Addresses |
| Task 7: Layer 2 - Data Link | What is the name of this Layer? | Data Link |
| | What is the name of the piece of hardware that all networked devices come with? | Network Interface Card |
| Task 8: Layer 1 - Physical | What is the name of this Layer? | Physical |
| | What is the name of the numbering system that is both 0's and 1's? | Binary |
| | What is the name of the cables that are used to connect devices? | Ethernet Cables |
| | Escape the dungeon to retrieve the flag. What is the flag? | THM{OSI_DUNGEON_ESCAPED} |

## Packets & Frames

> Understand how data is divided into smaller pieces and transmitted across a network to another device

| Task | Question | Answer |
|------|----------|--------|
| Task 1: What are Packets and Frames? | What is the name for a piece of data when it does have IP addressing information? | Packet |
| | What is the name for a piece of data when it does have IP addressing information? | Packet |
| | What is the name for a piece of data when it does not have IP addressing information? |Frame |
| Task 2: TCP/IP (The Three-Way Handshake) | What is the header in a TCP packet that ensures the integrity of data? | Checksum |
| | Provide the order of a normal Three-way handshake (with each step separated by a comma) | SYN,SYN/ACK,ACK |
| Task 3: Practical - Handshake | What is the value of the flag given at the end of the conversation? | THM{TCP_CHATTER} |
| Task 4: UDP/IP | What does the term "UDP" stand for? | User Datagram Protocol |
| | What type of connection is "UDP"? | Stateless |
| | What protocol would you use to transfer a file? |TCP |
| | What protocol would you use to have a video call? | UDP |
| Task 5: Ports 101 (Practical) | What is the flag received from the challenge? | THM{YOU_CONNECTED_TO_A_PORT} |


## Extending Your Network

> Learn about some of the technologies used to extend networks out onto the Internet and the motivations for this.

| Task | Question | Answer |
|------|----------|--------|
| Task 1: Introduction to Port Forwarding | What is the name of the device that is used to configure port forwarding? |Router |
| Task 2: Firewalls 101 | What layers of the OSI model do firewalls operate at? | Layer 3, Layer 4 |
| | What category of firewall inspects the entire connection? | Stateful |
| | What category of firewall inspects individual packets? | Stateless |
| Task 3: Practical - Firewall | What is the flag? | THM{FIREWALLS_RULE} |
| Task 4: VPN Basics | What VPN technology only encrypts & provides the authentication of data | PPP |
| | What VPN technology uses the IP framework? | IPSec |
| Task 5: LAN Networking Devices | What is the verb for the action that a router does? | Routing |
| | What are the two different layers of switches? Separate these by a comma I.e.: LayerX,LayerY | layer2,layer3 |
| Task 6: Practical - Network Simulator | What is the flag from the network simulator | THM{YOU'VE_GOT_DATA} |
| | How many HANDSHAKE entries are there in the Network Log? |5 |

## DNS in Detail

> Learn how DNS works and how it helps you access internet services.

| Task | Question | Answer |
|------|----------|--------|
| Task 1: What is DNS?|What does DNS stand for? | Domain Name System |
| Task 2: Domain Hierarchy | What is the maximum length of a subdomain? | 63 |
| | Which of the following characters cannot be used in a subdomain ( 3 b _ - )? | _ |
| | What is the maximum length of a domain name? | 253 |
| | What type of TLD is .co.uk? | ccTLD |
| Task 3: Record Types | What type of record would be used to advise where to send email? |MX |
| | What type of record handles IPv6 addresses? |AAAA |
| Task 4: Making a Request | What field specifies how long a DNS record should be cached for? | TTL |
| | What type of DNS Server is usually provided by your ISP? | Recursive |
| | What type of server holds all the records for a domain? | Authoritative |
| Task 5: Practical | What is the CNAME of shop.website.thm? | shops.myshopify.com |
| | What is the value of the TXT record of website.thm? | THM{7012BBA60997F35A9516C2E16D2944FF} |
| | What is the numerical priority value for the MX record? | 30 |
| | What is the IP address for the A record of www.website.thm? | 10.10.10.10 |

## HTTP in Detail

> Learn about how you request content from a web server using the HTTP protocol

| Task | Question | Answer |
|------|----------|--------|
| Task 1: What is HTTP(S)? | What does HTTP stand for? | HyperText Transfer Protocol
| | What does the S in HTTPS stand for? | Secure |
| | On the mock webpage on the right there is an issue, once you've found it, click on it. What is the challenge flag? | THM{INVALID_HTTP_CERT} |
| Task 2: Requests and Responses | What HTTP protocol is being used in the above example? | HTTP/1.1 |
| | What response header tells the browser how much data to expect? | Content-Length |
| Task 3: HTTP Methods | What method would be used to create a new user account? | POST |
| | What method would be used to update your email address? | PUT
| | What method would be used to remove a picture you've uploaded to your account? |DELETE|
| | What method would be used to view a news article? | GET |
| Task 4: HTTP Status Codes | What response code might you receive if you've created a new user or blog post article? | 201 |
| | What response code might you receive if you've tried to access a page that doesn't exist? | 404 |
| | What response code might you receive if the web server cannot access its database and the application crashes? | 503 |
| | What response code might you receive if you try to edit your profile without logging in first? | 401 |
| Task 5: Headers | What header tells the web server what browser is being used? | User-Agent |
| | What header tells the browser what type of data is being returned? | Content-Type |
| | What header tells the web server which website is being requested? | Host |
| Task 6: Cookies | Which header is used to save cookies on your computer?| Set-Cookies |
| Task 7: Making Requests | Make a GET request to /room | THM{YOU'RE_IN_THE_ROOM} |
| | Make a GET request to /blog and using the gear icon set the id parameter to 1 in the URL field | THM{YOU_FOUND_THE_BLOG} |
| | Make a DELETE request to /user/1 | THM{USER_IS_DELETED} |
| | Make a PUT request to /user/2 with the username parameter set to admin | THM{USER_HAS_UPDATED} |
| | POST the username of thm and a password of letmein to /login | THM{HTTP_REQUEST_MASTER} |

# How Websites work

> To exploit a website, you first need to know how they are created.

| Task | Question | Answer |
|------|----------|--------|
|Task 2: HTML| One of the images on the cat website is broken - fix it, and the image will reveal the hidden text answer! | HTMLHERO |
| | Add a dog image to the page by adding another img tag (<img>) on line 11. The dog image location is img/dog-1.png. What is the text in the dog image? | DOGHTML |
|Task 3: JavaScript | Click the "View Site" button on this task. On the right-hand side, add JavaScript that changes the demo element's content to "Hack the Planet" | JSISFUN |
|Task 4: Sensitive Data Exposure | 
View the website on this task. What is the password hidden in the source code? | testpasswd |
|Task 5: HTML Injection | 
View the website on this task and inject HTML so that a malicious link to http://hacker.com is shown. | HTML_INJ3CTI0N

# Putting it all together

> Learn how all the individual components of the web work together to bring you access to your favourite web sites.

| Task | Question | Answer |
|------|----------|--------|
|Task 2: Other Components | 
What can be used to host static files and speed up a clients visit to a website? | CDN |
| | What does a load balancer perform to make sure a host is still alive? | Health Check |
| | What can be used to help against the hacking of a website? | WAF |
|Task 3: How Web Servers Work | What does web server software use to host multiple sites? | virtual host |
| | What is the name for the type of content that can change? | Dynamic |
| | Does the client see the backend code? Yay/Nay | Nay |
|Task 4: Quiz | | THM{YOU_GOT_THE_ORDER} |

# Linux Fundamentals Part 1

> Embark on the journey of learning the fundamentals of Linux. Learn to run some of the first essential commands on an interactive terminal.

| Task | Question | Answer |
|------|----------|--------|
|Task 2: A Bit of Background on Linux | Research: What year was the first release of a Linux operating system? | 1991 |
|Task 4: Running Your First Commands | If we wanted to output the text "TryHackMe", what would our command be? | echo "TryHackMe" | echo TryHackMe |
|Task 4: Running Your First Commands | What is the username of who you're logged in as on your deployed Linux machine | tryhackme |
|Task 5: Interacting With the Filesystem! | On the Linux machine that you deploy, how many folders are there? | 4 |
| | Which directory contains a file? | Folder4 | 
| | What is the contents of this file? | Hello World! |
| | Use the cd command to navigate to this file and find out the new current working directory. What is the path? | /home/tryhackme/folder4 |
|Task 6: Searching for Files | Use grep on "access.log" to find the flag that has a prefix of "THM". What is the flag? | THM{ACCESS} |
|Task 7: An Introduction to Shell Operators | If we wanted to run a command in the background, what operator would we want to use? |& |
| | If I wanted to replace the contents of a file named "passwords" with the word "password123", what would my command be? | echo password123 > passwords |
| | Now if I wanted to add "tryhackme" to this file named "passwords" but also keep "passwords123", what would my command be? | echo tryhackme >> passwords |

# Linux Fundamentals Part 2

> Continue your learning Linux journey with part two. You will be learning how to log in to a Linux machine using SSH, how to advance your commands, file system interaction.

|Task|Question|Answer|
|----|--------|------|
|Task 3: Introduction to Flags and Switches | What directional arrow key would we use to navigate down the manual page? |  down |
| | What flag would we use to display the output in a "human-readable" way? | -H |
|Task 4: Filesystem Interaction Continued | How would you create the file named "newnote"? |touch newnote |
| | On the deployable machine, what is the file type of "unknown1" in "tryhackme's" home directory? | ASCII text |
| | How would we move the file "myfile" to the directory "myfolder" | mv myfile myfolder
| | What are the contents of this file? | THM{FILESYSTEM} |
|Task 5: Permissions 101 | On the deployable machine, who is the owner of "important"? | user2 |
| |  What would the command be to switch to the user "user2"? | su user2 | 
| | Output the contents of "important", what is the flag? | THM{SU_USER2} |
|Task 6: Common Directories | What is the directory path that would we expect logs to be stored in? | /var/logs |
| | What root directory is similar to how RAM on a computer works? | /tmp |
| | Name the home directory of the root user | /root |

# Linux Fundamentals Part 3

> Power-up your Linux skills and get hands-on with some common utilities that you are likely to use day-to-day!

|Task|Question|Answer|
|----|--------|------|
|Task 3: Terminal Text Editors | Edit "task3" located in "tryhackme"'s home directory using Nano. What is the flag? | THM{TEXT_EDITORS} |
|Task 4: General/Useful Utilities | What are the contents? | THM{WGET_WEBSERVER} |
|Task 5: Processes 101 | If we were to launch a process where the previous ID was "300", what would the ID of this new process be? | 301 |
| | If we wanted to cleanly kill a process, what signal would we send it? | sigterm |
| | Locate the process that is running on the deployed instance (10.10.167.207). What flag is given? | THM{PROCESSES} |
| | What command would we use to stop the service "myservice"? |systemctl stop myservice|
| | What command would we use to start the same service on the boot-up of the system? | systemctl enable myservice |
| | What command would we use to bring a previously backgrounded process back to the foreground? | fg |
|Task 6: Maintaining your System - Automation | When will the crontab on the deployed instance (10.10.167.207) run? | @reboot |
|Task 8: Maintaining your System - Logs | What is the IP address of the user who visited the site? | 10.9.232.111 |
| | What file did they access? | catsanddogs.jpg |

# Windows Fundamentals 1

In part 1 of the Windows Fundamentals module, we'll start our journey learning about the Windows desktop, the NTFS file system, UAC, the Control Panel, and more..

|Task|Question|Answer|
|----|--------|------|
|Task 2: Windows Editions | What encryption can you enable on Pro that you can't enable in Home? | Bitlocker |
|Task 3: The Desktop (GUI) | Which selection will hide/disable the Search box? | Hidden |
| | Which selection will hide/disable the Task View button? | Show Task View button |
| | Besides Clock and Network, what other icon is visible in the Notification Area? | Action Center |
|Task 5: The Windows/System 32 Folders | What is the system variable for the Windows folder? | %windir% |
|Task 6: User Accounts, Profiles, and Permissions | What is the name of the other user account? | tryhackmebilly |
| | What groups is this user a member of? | Remote Desktop Users, Users |
| | What built-in account is for guest access to the computer? | Guest |
| | What is the account status? | Account is disabled |
|Task 7: User Account Control | What does UAC mean? | User Account Control |
|Task 8: Settings and the Control Panel | In the Control Panel, change the view to Small icons. What is the last setting in the Control Panel view? | Windows Defender Firewall |
|Task 9: Task Manager | Ctrl+Shift+Esc |

# Windows Fundamentals 2

