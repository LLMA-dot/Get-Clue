# Cyber Defence Frameworks

Description: Discover frameworks and policies that help establish a good security posture. Learn how organisations use these in defensive strategies.
Level: Beginner

### This series of rooms is part of the SOC Level 1 learning path of Tryhackme.com
<hr>

![image](https://user-images.githubusercontent.com/66136128/204877134-a7e10ab7-fc8f-494a-b863-21d4f2ca56ba.png)

### Junior Security Analyst Intro 
Description: Play through a day in the life of a Junior Security Analyst, their responsibilities and qualifications needed to land a role as an analyst.
<hr>

<strong>Task 1</strong>: 
>Q: What will be your role as a Junior Security Analyst?<br>
A: Triage Specialist

<strong>Task 3.1</strong>: 
>Q: What was the malicious IP address in the alerts? <br>
A: 221.181.185.159<br>

<strong>Task 3.2</strong>: 
>Q: To whom did you escalate the event associated with the malicious IP address?<br>
A: Will Griffin<br>

<strong>Task 3.3</strong>: <br>
>Q: After blocking the malicious IP address on the firewall, what message did the malicous actor leave for you? <br>
A: THM{UNTIL-WE-MEET-AGAIN}<br><br>

![image](https://user-images.githubusercontent.com/66136128/204877345-50dd3c36-86a1-44e4-844f-520b2987430c.png)

### Pyramid of Pain

Description: Learn what is the Pyramid of Pain and how to utilize this model to determine the level of difficulty it will cause for an adversary to change the indicators associated with them, and their campaign.
<hr>

<strong>Task 2: Hash Values (Trivial)</strong> 
>Q: Provide the ransomware name for the hash '63625702e63e333f235b5025078cea1545f29b1ad42b1e46031911321779b6be' using open-source lookup tools. <br>
A: Answer: Conti

<strong>Task 3.1: IP Address (Easy)</strong>
>Q: What is the ASN for the third IP address observed?<br>
A: Host Europe GmbH

<strong>Task 3.2: IP Address (Easy)</strong>
>Q: What is the domain name associated with the first IP address observed?<br>
A: craftingalegacy.com

<strong>Task 4.1: Domain Names (Simple)</strong>
>Q: Go to this report on app.any.run and provide the first malicious URL request you are seeing, you will be using this report to answer the remaining questions of this task.<br>
A: craftingalegacy.com

<strong>Task 4.2: Domain Names (Simple)</strong>
>Q: What term refers to an address used to access websites?<br>
A: Domain Name

<strong>Task 4.3: Domain Names (Simple)</strong>
>Q: What type of attack uses Unicode characters in the domain name to imitate the a known domain?<br>
A: Punycode Attack

<strong>Task 4.4: Domain Names (Simple)</strong>
>Q: Provide the redirected website for the shortened URL using a preview: https://tinyurl.com/bw7t8p4u <br>
A: https://tryhackme.com

<strong>Task 5.1: Host Artifacts (Annoying)</strong>
>Q: What is the suspicious IP the victim machine tried to connect to in the screenshot above?<br>
H: Study first screenshot for suspicious IP.<br>
A: 35.214.215.33

<strong>Task 5.2: Host Artifacts (Annoying)</strong>
>Q: Use the tools introduced in task 2 and provide the name of the malware associated with the IP address<br>
H: Take file hash 92F58C4E2F524EC53EBE10D914D96CCB of G_jugk.exe (2nd Screenshot) and run it through a Hash scanner online. <br>
A: Emotet

<strong>Task 5.3: Host Artifacts (Annoying)</strong>
>Q: Using your OSINT skills, what is the name of the malicious document associated with the dropped binary?<br>
E: OSINT Skills: <em>Open Source Intelligence</em> <br>
H: Check first and 2nd screenshot for the executable file name.<br>
A: G_jugk.exe<br>

<strong>Task 5.4: Host Artifacts (Annoying)</strong>
>Q: Use your OSINT skills and provide the name of the malicious document associated with the dropped binary <br>
E: As of 03.12.2022 this execise is broken and can't be found out via traditional means. Refer to the following post for the answer:<br>
H: https://www.tryhackme.com/room/pyramidofpainax<br>
A: CMO-100120 CDW-102220.doc<br>

<strong>Task 7.1: Tools (Challenging)</strong>
>Q: Provide the method used to determine similarity between the files <br>
H: Simply read the text.<br>
A: Fuzzy hashing<br>

<strong>Task 7.2: Tools (Challenging)</strong>
>Q: Provide the alternative name for fuzzy hashes without the abbreviation <br>
H: Go to the SSH Deep website and read the first paragraph or just google "fuzzy hashes"<br>
L: https://ssdeep-project.github.io/ssdeep/index.html<br>
A: context triggered piecewise hashes<br>

<strong>Task 8.1: TTPs (tough)</strong>
>Q: Navigate to ATT&CK Matrix webpage. How many techniques fall under the Exfiltration category?<br>
H: Right there on the front page, to your right.<br>
L: https://attack.mitre.org/<br>
A: 9<br>

<strong>Task 8.2: TTPs (tough)</strong>
>Q: Chimera is a China-based hacking group that has been active since 2018. What is the name of the commercial, remote access tool they use for C2 beacons and data exfiltration?<br>
H: Head over to Mitre.org again. Use the search to look up the Chimera group. In the next document simply search for "Exfiltration".<br>
L: https://attack.mitre.org/<br>
A: Cobalt Strike
   
<strong>Task 9: Practical: The Pyramid of Pain</strong>
>Q: Deploy the static site attached to this task and place the prompts into the correct tiers in the pyramid of pain!<br>
H: Task currently broke, no answer necessary.<BR>
A: -<br><br>
  
![image](https://user-images.githubusercontent.com/66136128/205436370-398ae2b3-889a-4459-aa2c-24021c46850c.png)

### Cyber Kill Chain
  
Description: The Cyber Kill Chain framework is designed for identification and prevention of the network intrusions. You will learn what the adversaries need to do in order to achieve their goals.<hr>

<strong>Task 2.1: Reconnaissance </strong>
>Q: What is the name of the Intel Gathering Tool that is a web-based interface to the common tools and resources for open-source intelligence?<br>
A: OSINT Framework<br>
  
<strong>Task 2.2: Reconnaissance</strong>
>Q: What is the definition for the email gathering process during the stage of reconnaissance?<br>
A: Email harvesting<br>
  
  <strong>Task 3: Weaponization</strong>
  >Q: This term is referred to as a group of commands that perform a specific task. You can think of them as subroutines or functions that contain the code that most users use to automate routine tasks. But malicious actors tend to use them for malicious purposes and include them in Microsoft Office documents. Can you provide the term for it? <br>
A: Macro<br>
  
  <strong>Task 4: Delivery</strong>
  >Q: What is the name of the attack when it is performed against a specific group of people, and the attacker seeks to infect the website that the mentioned group of people is constantly visiting.<br>
  A: Watering hole attack<br>
  
  <strong>Task 5: Exploitation</strong>
  >Q: Can you provide the name for a cyberattack targeting a software vulnerability that is unknown to the antivirus or software vendors?<br>
  A: Zero-Day<br>
  
  <strong>Task 6.1: Installation</strong>
  >Q: Can you provide the technique used to modify file time attributes to hide new or changes to existing files?<br>
  A: Timestomping<br>
  
  <strong>Task 6.2: Installation</strong>
  >Q: Can you name the malicious script planted by an attacker on the webserver to maintain access to the compromised system and enables the webserver to be accessed remotely?<br>
  A: Web shell<br>
  
  <strong>Task 7: Command & Control</strong>
  >Q: What is the C2 communication where the victim makes regular DNS requests to a DNS server and domain which belong to an attacker.  <br>
  A: DNS Tunneling<br>
  
  <strong>Task 8:  Actions on Objectives (Exfiltration)</strong>
  >Q: Can you provide a technology included in Microsoft Windows that can create backup copies or snapshots of files or volumes on the computer, even when they are in use?  <br>
  A: Shadow copy<br>
  
  <strong>Task 9:  Practice Analysis</strong>
  >Q: What is the flag after you complete the static site?<br>
  H: From top to bottom: Starts with <em>PowerShell</em>, continues with a <em>spearphishing attachment</em>, <em>exploit public-facing application</em> and <em>dynamic linker hijacking</em>. The last two are <em>fallback channels</em> and <em>data from local system</em>. <br>
  A: THM{7HR347_1N73L_12_4w35om3}<br><br>
  
  ![image](https://user-images.githubusercontent.com/66136128/206413936-a85b578d-ea7f-486c-80c5-11ab28dd1904.png)

  ### Unified Kill Chain

Description: Learn what is the Pyramid of Pain and how to utilize this model to determine the level of difficulty it will cause for an adversary to change the indicators associated with them, and their campaign.
<hr>

  <strong>Task 2: What is a "Kill Chain"</strong>
 >Q: Where does the term "Kill Chain" originate from?<br>
 A: Military.<br>
   
  <strong>Task 3: What is "Threat Modelling"</strong>
  >Q: What is the technical term for a piece of software or hardware in IT (Information Technology?)<br>
  A: Asset<br>

  <strong>Task 4: Introducing the Unified Kill Chain</strong>
  >Q1: In what year was the Unified Kill Chain framework released?<br>
  A1: 2017<br><br> 
  Q2: According to the Unified Kill Chain, how many phases are there to an attack?<br>
  A2: 18<br><br>
  Q3: What is the name of the attack phase where an attacker employs techniques to evade detection?<br>
  A3: Defense Evasion<br><br>
  Q4: What is the name of the attack phase where an attacker employs techniques to remove data from a network?<br>
  A4:  Exfiltration<br><br>
  Q5: What is the name of the attack phase where an attacker achieves their objectives?<br>
  A5: Objectives
  
  <strong>Task 5: Phase: In (Initial Foothold)</strong>
>Q1: What is an example of a tactic to gain a foothold using emails?<br>
 A1: phishing<br><br>
 Q2: Impersonating an employee to request a password reset is a form of what?<br>
 A2: Social Engineering<br><br>
 Q3: An adversary setting up the Command & Control server infrastructure is what phase of the Unified Kill Chain?<br>
 A3: Weaponization<br><br>
 Q4: Exploiting a vulnerability present on a system is what phase of the Unified Kill Chain?<br>
 A4: Exploitation<br><br>
 Q5: Moving from one system to another is an example of?<br>
 A5: Pivoting<br><br>
 Q6: Leaving behind a malicious service that allows the adversary to log back into the target is what?<br>
 A6: Persistence<br>
  
  <strong>Task 6: Through (Network Propagation)</strong>
>Q1: As a SOC analyst, you pick up numerous alerts pointing to failed login attempts from an administrator account. What stage of the kill chain would an attacker be seeking to achieve?<br>
A1: Privilege Escalation<br><br>
      Q2: Mimikatz, a known attack tool, was detected running on the IT Manager's computer. What is the mission of the tool?<br>
      H: This is a bit more tricky: You would think it's credntial access in the article but it's actually what it describes.<br>
      A2: Credential Dumping<br><br>

  <strong>Task 7: Phase Out (Action on Objectives)</strong>
  >Q1: While monitoring the network as a SOC analyst, you realise that there is a spike in the network activity, and all the traffic is outbound to an unknown IP address. What stage could describe this activity?<br>
  A1: Exfiltration<br><br>
  Q2: Personally identifiable information (PII) has been released to the public by an adversary, and your organisation is facing scrutiny for the breach. What part of the CIA triad would be affected by this action?<br>
  A2: Confidentiality<br><br>

  <strong>Task 8: Practical</strong>
  >Q: Match the scenario prompt to the correct phase of the Unified Kill Chain to reveal the flag at the end. What is the flag?<br>
  A: THM{UKC_SCENARIO}<br><br>
  
![image](https://user-images.githubusercontent.com/66136128/208226877-0e70bff8-0ea5-4627-b948-fb7d629f92ba.png)

### Diamond Model

Description: Learn about the four core features of the Diamond Model of Intrusion Analysis: adversary, infrastructure, capability, and victim.
<hr>

   <strong>Task 2: Adversary</strong>
   >Q1: What is the term for a person/group that has the intention to perform malicious actions against cyber resources?<br>
   A1: Adversary Operator<br><br>
   Q2: What is the term of the person or a group that will receive the benefits from the cyberattacks?<br>
   A2: Adversary Customer<br><br>
   
   <strong>Task 3: Victim</strong>
   >Q: What is the term that applies to the Diamond Model for organizations or people that are being targeted?<br>
   >A: Victim Personae<br><br>

   <strong>Task 4: Capability</strong>
   >Q: Provide the term for the set of tools or capabilities that belong to an adversary.<br>
   A: Adversary Arsenal<br><br>
   
   <strong>Task 5: Infrastructure</strong>
   >Q1: To which type of infrastructure do malicious domains and compromised email accounts belong?<br>
   A2: Type 2 Infrastructure<br><br>
   Q2: What type of infrastructure is most likely owned by an adversary? <br>
   A2: Type 1 Infrastructure<br><br>

   <strong>Task 6: Event Meta Features</strong>
   >Q1: What meta-feature does the axiom "Every malicious activity contains two or more phases which must be successfully executed in succession to achieve the desired result" belong to? <br>
   A1: Phase<br><br>
   Q2: You can label the event results as "success", "failure", and "unknown". What meta-feature is this related to? <br>
   A2: Result<br><br>
   Q3: To what meta-feature is this phrase applicable "Every intrusion event requires one or more external resources to be satisfied prior to success"? <br>
   A3: Resources<br><br>
   
> No Questions in tasks 7, 8 & 9
   
   <strong>Practice Analysis</strong>
   >Q: Complete all eight areas of the diamond. What is the flag that is displayed to you?<br>
   A: THM{DIAMOND_MODEL_ATTACK_CHAIN}<br>
   
   ![image](https://user-images.githubusercontent.com/66136128/209426109-025ffca4-6521-4585-91fc-8997c0ca62fd.png)
   
   ### MITRE
   
   Description: This room will discuss the various resources MITRE has made available for the cybersecurity community.<hr>
   
   <strong>Task 3: ATT&CK Framework</strong>
   >Q1: Besides blue teamers, who else will use the ATT&CK Matrix? <br>
   A1: Red Teamers<br><br>
   Q2: What is the ID for this technique?<br>
   H2: Find it on the MITRE Website (Phishing Subpage).<br>
   A2: T1566<br><br>
   Q3: Based on this technique, what mitigation covers identifying social engineering techniques?<br>
   A3: User Training<br><br>
   Q4: What are the data sources for Detection? (format: source1,source2,source3 with no spaces after commas)<br>
   A4: Application Log,File,Network Traffic<br><br>
   Q5: What groups have used spear-phishing in their campaigns? (format: group1,group2)<br>
   H5: There are actually 3 groups groups at the time of this writing (27/12/2022) but the answer field only wants two. <br>
   A5: Axiom, Gold Southfield<br><br>
   Q6: Based on the information for the first group, what are their associated groups?<br>
   H6: Follow Axiom's hyperlink to the associated page on Mitre to find the answer.<br>
   A6: Group 72<br><br>
   Q7: What software is associated with this group that lists phishing as a technique?<br>
   H7: Scroll down to Software and STRG+F look for the entry that contains "Phishing".<br>
   A7: Hikit<br><br>
   Q8: What is the description for this software?<br>
   H8: More clicking involved. You'll find it yourself.<br>
   A8: Hikit is malware that has been used by Axiom for late-stage persistence and exfiltration after the initial compromise.<br><br>
   Q9: This group overlaps (slightly) with which other group?<br>
   H9: Answer back on Axiom's page on the top.<br>
   A9: Winnti Group<br><br>
   Q10: How many techniques are attributed to this group?<br>
   H10: Count the techniques on the same page.<br>
   A10: 15<br><be>
   
   <strong>Task 4: CAR Knowledge Base</strong>
   >Q1: For the above analytic, what is the pseudocode a representation of?<br>
   H1: It does say "above" but it actually means the first example.
   A1: Splunk search<br><br>
   Q2: What tactic has an ID of TA0003?<br>
   H2: Use the hint.<br>
   A2: Persistence.<br><br>
   Q3: What is the name of the library that is a collection of Zeek (BRO) scripts?<br>
   H3: Use the hint on the page.<br>
   A3: BZAR.<br><br>
   Q4: What is the name of the technique for running executables with the same hash and different names?<br>
   H4: Find it here: [Link](https://car.mitre.org/analytics/CAR-2013-05-009/)<br>
   A4: Masquerading<br><br>
   Q5: Examine CAR-2013-05-004, besides Implementations, what additional information is provided to analysts to ensure coverage for this technique?<br>
   H5: Again, use the hint to find the information on the CAR-2013-05-044 page.<br>
   A5: Unit Tests<br><br>
   
   <strong>Task 5: MITRE Engage</strong>
   
   
