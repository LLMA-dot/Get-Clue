# TryHackMe.com Complete Beginner Learning Path

The beginner path aims to give a broad introduction to the different areas in Computer Security. This path will be looking at the following areas:

- Basic Linux: Get familiar with the linux command line.
- Web Application Security: Learn web application security concepts through the OWASP Top 10
- Network Security: Using essential tools like NMAP to enumerate infrastructure.
- Scripting Challenges: Using Python and Bash to carry out different tasks.
- Privilege Escalation

Once you complete the beginner path, you should have learnt the fundamental knowledge for each specific area, and use these core concepts to build your understanding of more complex topics within the area.

### Prerequisites

You need a basic understanding of fundamental computing principles and a broad understanding of the different areas of cyber security to complete this pathway. If you do not already have these prerequisites, complete the Pre-Security Pathway and Intro To Cyber Security Pathway.

## Table of Contents

# Complete Beginner Introduction

> This section focuses on introducing you to the TryHackMe platform, and to the cyber security industry. Once you understand the virtual room concept on TryHackMe, you'll start exploring the different careers in cyber security to get a better feel of what you may like to do. After which, you'll learn how to effectively research for complex answer - cyber security is a very broad field and understand how to find relevant information will be extremely useful to you.

## Tutorial

> Learn how to use a TryHackMe room to start your upskilling in cyber security.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Starting your first machine | Follow the steps in this task. What is the flag text shown on the website of the machine you started on this task? A flag is just a piece of text that's used to verify you've performed a certain action. In security challenges, users are asked to find flags to prove that they've successfully hacked a machine | flag{connection_verified} |

## Introductory Networking

> An introduction to networking theory and basic networking tools

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Introduction | N/A | N/A |
|Task 2: The OSI Model - An Overview | Which layer would choose to send data over TCP or UDP? | 4 |
| | Which layer checks received information to make sure that it hasn't been corrupted? | 2 |
| | In which layer would data be formatted in preparation for transmission? | 2 |
| | Which layer transmits and receives data? | 1 |
| | Which layer encrypts, compresses, or otherwise transforms the initial data to give it a standardised format? | 6 |
| | Which layer tracks communications between the host and receiving computers? | 5 |
| | Which layer accepts communication requests from applications? | 7 |
| | Which layer handles logical addressing? | 3 |
| | When sending data over TCP, what would you call the "bite-sized" pieces of data? | Segments |
| | (Research) Which layer would the FTP protocol communicate with? | 7 |
| | Which transport layer protocol would be best suited to transmit a live video? | UDP |
|Task 3: Encapsulation | How would you refer to data at layer 2 of the encapsulation process (with the OSI model)? | Frames |
| | How would you refer to data at layer 4 of the encapsulation process (with the OSI model), if the UDP protocol has been selected? | Datagrams |
| | What process would a computer perform on a received message? | de-encapsulation |
| | Which is the only layer of the OSI model to add a trailer during encapsulation? | Data Link |
| | Does encapsulation provide an extra layer of security (Aye/Nay)? | Aye |
|Task 4: The TCP/IP Model | Which model was introduced first, OSI or TCP/IP? | TCP/IP |
| | Which layer of the TCP/IP model covers the functionality of the Transport layer of the OSI model (Full Name)? | Transport |
| | Which layer of the TCP/IP model covers the functionality of the Session layer of the OSI model (Full Name)? | Application |
| | The Network Interface layer of the TCP/IP model covers the functionality of two layers in the OSI model. These layers are Data Link, and?.. (Full Name)? | Physical |
| | Which layer of the TCP/IP model handles the functionality of the OSI network layer? | Internet |
| | What kind of protocol is TCP? | connection-based |
| | What is SYN short for? | Synchronise |
| | What is the second step of the three way handshake? | SYN/ACK |
| | What is the short name for the "Acknowledgement" segment in the three-way handshake? | ACK |
|Task 5: Networking Tools - Ping | What command would you use to ping the bbc.co.uk website? | ping bbc.co.uk |
| | Ping muirlandoracle.co.uk - What is the IPv4 address? | 217.160.0.152 |
| | What switch lets you change the interval of sent ping requests? | -i |
| | What switch would allow you to restrict requests to IPv4? | -4 | 
| | What switch would give you a more verbose output? | -v |
|Task 6: Networking Tools - Traceroute | Use traceroute on tryhackme.com. Can you see the path your request has taken? | N/A |
| | What switch would you use to specify an interface when using Traceroute? | -i |
| | What switch would you use if you wanted to use TCP SYN requests when tracing the route? | -t |
| | [Lateral Thinking] Which layer of the TCP/IP model will traceroute run on by default (Windows)? | Internet |
|Task 7: Networking Tools - WHOIS | Perform a whois search on facebook.com | N/A |
| | What is the registrant postal code for facebook.com? | 94025 |
| | When was the facebook.com domain first registered (Format: DD/MM/YYYY)? | 29/03/1997 |
| | Perform a whois search on microsoft.com (Note: If you fail to read the above instruction and consequently get the wrong answer for the next question, don't expect a helpful response if you report it as a bug...) | N/A |
| | Which city is the registrant based in? | Redmond |
| | [OSINT] What is the name of the golf course that is near the registrant address for microsoft.com? | Bellevue Golf Course |
| | What is the registered Tech Email for microsoft.com? | msnhst@microsoft.com |
|Task 8: Networking Tools - Dig | What is DNS short for? | Domain Name System |
| | What is the first type of DNS server your computer would query when you search for a domain? | Recursive |
| | What type of DNS server contains records specific to domain extensions (i.e. .com, .co.uk*, etc)*? Use the long version of the name. | Top-level domain |
| | Where is the very first place your computer would look to find the IP address of a domain? | local cache |
| | [Research] Google runs two public DNS servers. One of them can be queried with the IP 8.8.8.8, what is the IP address of the other one? | 8.8.4.4 |
| | If a DNS query has a TTL of 24 hours, what number would the dig query show? | 86400 |

## Network Services

Learn about, then enumerate and exploit a variety of network services and misconfigurations.

| Task | Question | Answer |
|------|----------|--------|
|Task 1: Get Connected | Ready? Let's get going | N/A |
|Task 2: Understanding SMB | What does SMB stand for? | Server Message Block |
| | What type of protocol is SMB? | Response-Request |
| | What do clients connect to servers using? | TCP/IP |
| | What systems does Sambra run on? | Unix |