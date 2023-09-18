# CRD 10 - Tools

## Table of Contents

1. [Chapter Introduction](#chapter-introduction)
2. [How IT is used](#how-it-is-used)
3. [Technology Automation](#technology-automation)
4. [Identity and Access Management Protocols](#identity-and-access-management-protocols)

# Chapter Introduction

Organizations seeking to achieve higher levels of IAM maturity should consider the use of commercially available products with some automated features.

When administering IAM activities, the majority of provisioning and enforcement proicesses can be automated through the use of an IAM application software and tools. These tools range from applications that can be installed and used easily by organizations with small IT departments (e. g. less than 10 individuals) to applications that require customization for use by organizations with large or global IT departments.

# How IT is used

The use of technology during the IAM process can be used to replace manual activities or to bolster the lack of some IAM activities. Business management needs to understand the technology being used and why it is used, while IT should install and maintain the tools to support business needs.

> Solutions Provided by IT Tools in IAM:

- Generate access request forms.
- Route access request forms to approves.
- Perform a prelimiary segregation of duties conflict review.
- Communicate the creation, change, and termination of identities.
- Perform authentication and authorization of identities to applications.
- Generate logs of identities and their use.
- Generate passwords.

> While the use of technology certainly facilitates IAM, there are advantages and disadvantages to technology deployment and use.

### IT Advantages

- Faster response times
- Easily retrievable evidence of activities
- Automated workflows for approvals and communication.
- Better management of large data volumes.
- Ability to centrally administer and monitor systems.

### IT Disadvantages

- Lack of ownership.
- Lack of understanding of how to use the tools.
- Tools that may not be suited to the organization's size or complexity.

# Technology Automation

The following areas can be considered for improvement using an IAM technology:

### 1. Access request and approval

- Web-based self-service access requests.
- Approval processes capable of supporting risk-based approval paths, approver notifications, delegation, segregation of duties rules and escalations for failure to approve within service-level agreements (SLA's).
- Preapproved, automated access requests for "Day 1" access.
- Role-based access profiles to drive complex access provisioning downstream.

### 2. Access provisioning and de-provisioning

- Authoritative identity source integration to detect hire, transfer and termination triggers.
- Configurable approval, provisioning and de-provisioning workflow, including automated escalation.
- Automated provisioning and de-provisioning of access to target systems using standard protocols or native application program interfaces (APIs)
- Role-based access profile support.

### 3. Access enforcement

- Policy-driven access control for web applications.
- Centralized directory services used for authentication and authorization.
- Web services-based authentication and authorization capabilities, including SAML (Security Assertion Mark-up Language) and XACML (eXtensible Access Control Mark-up Language)
- Federated authentication and authorization services, which may be web-based.

### 4. Reporting and Auditing

- Identity analytics capable of identifying high-risk user access and behavior profiles, rule and exception-based access analysis and reporting, and continuous access monitoring and reporting.
- Generation of IAM service management metric reports.

### 5. Access review and certification

- Configurable processes that support periodic, on-demand and use life cycle event-triggered access reviews, also referred to as attestations or certifications.
- The capability to tag access with risk ratings to support more frequent periodic access reviews for higher risk access.
- De-Provisioning event generation to trigger revocation of access, which has been deemed inappropriate during access reviews.

### 6. Account access reconciliation

- Role and rule-variance monitoring and reporting.
- High-risk user analysis (i. e. outlier analysis, behavior profiling).
- Rules and exception-based access analysis.

### 7. Strategy and Governance

- Role management, including role and mule mining, role definition reviews, role ownership dispositioning in response to user life cycle events, such as transfers and terminations.
- Governance, risk and compliance monitoring, including risk management and tracking, risk reporting dashboards, risk remediation plan tracking, data content and system configuration monitoring.
- IAM service management dashboards supporting KPIs and metric reports generated via reporting and auditing technology.

### 8. Single Sign-on

There are many ways to perform authentication for an identity within an IAM system. Single sign-on is one automated means of authenticating an identity to all IT resources to which the identity has been granted access rights, without requiring the identity to provide more than one series of authenticating factors (i. e. a user ID and password).

### 9. Remote Sign-on

In many organizations, some identities are granted access rights to authenticate themselves to enterprise resources from outside the organization. This type of remote access and authentication can occur in many ways, some of which are more secure than others. Examples of these mechanisms are:

- VPN
- Web Portals

Each of these remote connection types has its own inherent advantages and disadvantages. For instance, access through a Web Portal is the most universal in that it allows users to gain system access from nearly any system that has Internet access, yet is also puts proprietary or confidential information at risk of being compromised by the uncontrolled system on which the Web browser is located.

 # Identity and Access Management Protocols

 Ensuring data confidentiality and integrity is critical in an era where many organizations rely on cloud services, Internet of Things (IoT) connectivity, Artificial Intelligence (AI) and machine learning.

 Identity and Access Management protocols are designed specifically for the transfer of authentication information and consist of a series of messages in a preset sequence designed to protect data as it travels through networks or between servers.

 Consider these facts:

 - Over 80% of hacking-related breaches were linked to weak, reused or stolen passwords.
 - 62% of system intrusions were due to supply chain attacks.
 - 32% of breaches were directly tracted to phishing attacks.
 - 13% of breaches were caused by human error.

 > Source: Verizon Data Breach Investigations Report, 2022

 ## Breakdown of Identity and Access Management Protocols

 Common identity management standards handle user requests for access to data or applications and deliver responses based on the information a user provides.

 Several IAM protocols exist to support strong IAM policies by securing data and ensuring its integrity during transfer. Generally known as "Authentication, Authorization, Accounting" or AAA, these identity management protocols provide standards for security to simplify access management, aid in compliance, and create a uniform system for handling interactions between users and systems.

 ### LDAP

 The Lightweight Directory Access Protocol (LDAP) is an open-source protocol not associated with any specific vendor, although it does provide the basis for Microsofts Active Directory. LDAP was established as an industry standard in the 1990s and is among the oldest identity and access management protocols. It runs above the TCP/IP stack and is most often used in modern organizations as a tool to handle authentication for on-premise applications.

 As the name suggests, LDAP is associated with directory access. When a user wants to connect to a directory, search its contents or modify the directory itself, LDAP relays the information necessary for authentication and subsequent authorization. The protocol is flexible and can be customized to the needs of systems to make locationing and interacting with resource on a network easier and more secure.

### SAML

The Security Assertion Markup Language (SAML) protocol is most often used in systems employing the Single Sign-On (SSO) method of access control. In SSO, one set of credentials allows users to access multiple aplications. This method is most benefiticial when users move between applications during sessions. Instead of requiring individual logins for each application, SSO makes use of data already authenticated for the session to streamline the switch between applications. The resulting increase in efficiency helps prevent bottlenecks in the authorization process.

SAML is an open standard, making it available to any organization. However, it can't be used to authenticate or authorize device connections and isn't popular for supporting access to internal applications. This effectively limits the protocol to third-party applications, such as the cloud tools used by most modern businesses. As Software-as-a-Service (SaaS) continues to grow in popularity, SAML is an integral part of corporate IAM.

### OpenID

Like SAML, OpenID is used for web applications and can be seen in practice when interacting with products from Google and Yahoo! Implementation of this protocol is less complicated than implementation of SAML, making it more accessible for a variety of applications.

Part of the benefit of OpenID for consumer applications is the ability for users to maintain a consistent identity across platforms. It supports the use of a single identifier and password to connect to every service a user is authorized to access. In a web environment, this means the user's avatar and profile remain the same between services. This makes users easier to recognize and preserves the continuity sought by those working to become influencers and thought leaders.

Businesses are beginning to make use of OpenID in cloud applications to leverage the benefit it offers in terms of efficiency. It provides the same advantage as SAML in its ability to streamline workflows involving multiple applications and helps to maintain the integrity of individual user identity within complex systems.

### OAuth

Large customer-facing platforms like Facebook, Google and Twitter rely on OAuth to connect third-party applications with the permission of users. OAuth works by allowing approved applications to use login credentials from one service or platform to provide access to additional applications without requiring separate logins. Authorization may be granted or revoked by the user at any time.

When credentials are sent using this protocol, OAuth works to authenticate the identity of the initial user and authorize connections between applications. This type of authorization is known as "secure, third-party, user-agent, delegated" authorization and doesn't require the initial credentials to be transferred between applications in order for a user to gain access.

OAuth is similiar to OpenID in its applications and has some of the same functionality as SAML. Because it grants access without creating another point at which access credentials can be compromised, OAuth can benefit organizations using or building applications for which such extended access is required.

### Kerberos

This free open protocol was developed at the Massachusetts Institute of Technology (MIT) and uses a system of tickets and authenticators to verify user identities. Kerberos isn't in wide usage except by Microsoft Windows applications, in which it aids in the automatic sign-in process for Microsoft products and resources.

In systems using Kerberos, a "Kerberos Realm" is created to encapsulate all the resources to which a user may request access to. This realm also houses the Key Distribution Center (KDC), in which resides the authentication server (AS) and the ticket granting server (TGS). When authentication credentials are provided using the SSO method, it triggers a series of actions in which the user's information is located, encrypted keys are sent back and forth between the user and trhe server and, if the access credentials are correct, a ticket is granted for the session. In this client-server identification scenario, information is verified back and forth between the user and the system to establish authenticity of credentials and prood of identity.

The benefit of this complex system of servers, keys and tickets is the user's password doesn't have to be stored on a local server or sent over the network connection. Instead, the entire process is handled within the Kerberos realm. This makes Kerberos identity management protocols particularly useful for the transfer of information over non-secure networks. Keys and tickets provide security for authorization data, thereby protection credentials from hackers.

### Radius

Once used to authenticate users on dialup connections, the Remote Authentication Dial-In User Service (RADIUS) is now employed mostly for network services, such as wireless connections, VPNs and network infrastructure.

RADIUS works by encrypting authentication credentials within a packet and is sometimes used with a LDAP server to increase the level of security and provide a greater degree of access control. RADIUS is best suited for applications requiring general authorization, but due to shortcomings in the protocol, it has largely been replaced by updated AAA standards.

When RADIUS was in common use, it functioned to store user profiles in a central database, allowing remote servers to share the information and organizations to implement improved security measures by housing all user data in one place.

### Diameter

Named as a bit of a play on words, Diameter evolved out of RADIUS and is now replacing the older protrocol with a message-based authentication system. Diameter works over TCP and Stream Control Transmission Protocol (SCTP) to exchange positive and negative messages between th euser and the system, resulting in access being granted to authorized users and denied those without proper credentials.

Diameter is built on peer-to-peer architecture and functions using three nodes:

- The client node receives access requests from users.
- The server node is responsible for processing information from access requests.
- The agent node acts as an intermediary between the client and the server.

This protocol improves upon RADIUS by allowing more dynamic rules for handling authentication, increased security for message exchanges and better control over the details of access control policies. Encryption prevents packets of information from being intercepted and decoded, and improved service quality ensures all packets are exchanged instead of some being dropped as can occur with RADIUS.

### SCIM

With many businesses relying heavily on SaaS for information exchange, collaboration and customer service tasks, it's essential to have a protocol with the ability to support dynamic shifts in access requirements. The System for Cross-domain Identity Management (SCIM) protocol fills this role as an open standard capable of automating the exchange of identification data from one IT system to another.

SCIM makes lifecycle management easier by giving organizations the power to automatically provision or deprovision users as they come into or leave a system. By sharing attribute information, SCIM is able to aid in the management of users permissions and maintain unity in data.

Failing to revoke access once a user no longer requires entry into a system leaves the system vulnerable to insider and third-party threats. Organizations adopting SCIM as part of an access management strategy can greatly reduce the risk posed by accounts belonging to former users by ensuring users leaving the system are unable to log in after they no longer require access.

### TACACS

Unlike most other common identity and access management standards, the Terminal Access Controller Access Control System (TACACS) is owned by Cisco. It was originally developed for the U. S. Department of Defense as a protocol to simplify the process of authentication and authorization so that users could move between machines within a complex infrastructure without the need for multiple logins.

Using TCP, user credentials are sent from a remote access server to a central authentification server to complete the authentication process. Authentication packets are fully encrypted to protect the information as it travels between devices and servers.

TACACS has since been updated to TACACS+ and is among the most popular AAA protocols. Most commonly used in UNIX networks, TACACS provides large organizations with granular control over command authorization. This supports the level of security necessary to protect sensitive, confidential and classified information from being accessed by unauthorized users.

### Blockchain

The blockchain is often associated with cryptocurrency such as Bitcoin, but this unique "digital record" also has powerful applications for IAM security. It consists of "blocks" of information containing details about users; their identifying attributes, what they can access and what they own. Unlike databases handled by an administrator or organization, the blockchain has no single owner and operates like a network of multiple databases, each a replica of the other. Information within the database is synchronized for uniformity and can be accessed by users within a particular blockchain network.

Using the blockchain for authentication could change the way users interact with systems and the framework on which organizations base their access control policies. Since blockchain networks eliminate the need for intermediary gateways or software, using the technology for authentication not only reduces costs but also increases security. Intermediaries are no longer necessary due to the availability of information to trusted parties in blockchain networks, and no information found in the blockchain need ever be stored on a traditional server. Instead, identification attributes and login credentials are hashed and stored in the blockchain and can be accessed directly as the basis for authorization.

### Final Thoughts on Protocols

Because each of these identity and access management standards has different applications, IAM professionals must work with organizations and institutions to implement appropriate protocols to ensure data security.

Standards have been updated in the past to address changes in technology and the new vulnerabilities presented by an increased influx of data. As the IoT, Ai and machine learning all evolve, protols will continue to change. Timely updates will keep systems secure and continue to provide the protection necessary for integrity of credentials and the security of sensitive data. Maintaining security standards ensures compliance with regulations and allows systems to continue operating without unauthorized interference.