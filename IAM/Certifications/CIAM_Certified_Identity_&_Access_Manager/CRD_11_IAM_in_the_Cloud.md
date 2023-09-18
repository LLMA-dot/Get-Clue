# CRD 11: IAM in the Cloud

## Table of Contents

1. [Identity and Access Management in Cloud Platforms](#identity-and-access-management-in-cloud-platforms)
2. [What is a Cloud Platform?](#what-is-a-cloud-platform)
3. [Importance of IAM in the Cloud](#importance-of-iam-in-the-cloud)
4. [Cloud Access Controls](#cloud-access-controls)
5. [Middleware in the Cloud](#middleware-in-the-cloud)
6. [Choosing a Cloud Provider](#choosing-a-cloud-provider)

## Identity and Access Management in Cloud Platforms

The introduction of new business technology in recent years has changed the structure of the workplace. An increasing number of employees spend time both in and out of the office, access networks from remote locations and rely on both onsite and mobile devices to do their jobs. This growing number of endpoints introduces new and sometimes unexpected vulnerabilities to business networks and requires a re-evaluation of security practices to determine how best to identify and authenticate users and their devices.

Business IT infrastructure is shifting in response to these changes, adopting more software-as-a-service (SaaS) applications to take advantage of the benefits these applications offer to a mobile workforce. Many organizations already have at least one application or a portion of their computing infrastructure based in the cloud.

This rapid migration to the cloud and increased business spending in this area, raises unique concerns regarding data security, identity management and access control. As more businesses of all sizes opt to invest in the tools offered by popular cloud platforms, it will be increasingly necessary for business owners and IT departments to work together on the development of appropriate identity and access management (IAM) policies designed to address these concerns.

Cloud platform providers are responding to the need for stronger security with integrated IAM solutions. Knowing what offerings are available and how to leverage the tools includes in each platform provides a framework for smarter, stronger IAM policies made to address the growing number of potential vulnerabilities and new types of risk associated with connected devices and remote workers in modern businesses.

## What is a Cloud Platform?

A cloud computer also known as "shared pools of configurable computer system resources and higher-level services that can be rapidly provisioned with minimal managmenet effort," is often employed by businesses in an effort to:

- Increase collaborative power
- Establish a scalable platform for implementing applications
- Increase ease of access
- Reduce costs

Cloud computing tools are most commonly offered in two ways: software-as-a-service (SaaS) and platform-as-a-service (PaaS). In a typical SaaS model, the customer pays a monthly or yearly fee to use an application or software platform managed entirely by a third-party provider. PaaS offers more flexibility by allowing customers to control which apps are deployed on a third-party platform.

These cloud platforms include the software infrastructure to support cloud computing services. As part of the public cloud, PaaS solutions provide the hardware and software necessary for businesses to develop and deploy applications at a lower cost than housing and overseeing a private server onsite. Having a third party manage infrastructure maintenance creates a largely self-service environment with the added option of offsite technical support to handle any issues encountered when working in the cloud environment. This has the benefit of relieving IT departments from the burden of overseeing and managing server hardware, and it ensures applications are always available and up to date.

### Major Cloud Providers - What They Offer

Top cloud platform providers give business flexible, customizable cloud environments in which to build networks of integrated and complementary applications designed to support more efficient workflows, improve collaboration and increase productivity. Each provider has its own suite of available applications and range of features to address the diverse requirements of today's connected businesses.

### Cloud Benefits for Businesses

Investing in a PaaS solution addresses many of the common concerns business owners face when it comes to productivity and security, including:

- Ease of application access
- Bottlenecks encountered in daily workflows
- Roadblocks to more efficient collaboration
- Compliance with all current security regulations
- Clear and complete audit reporting
- Mobile workforce management
- Management of dead or dormant accounts

By using a cloud platform to overcome these challenges, companies are free to move forward without being bogged down with minute administrative details or the burden of managing and maintaining self-hosted applications.

## Importance of IAM in the Cloud

Identity and access management (IAM) is critical in the cloud because it helps organizations manage user access to cloud-based resources and data, and ensure that only authorized users have access to these resources. Some of the key reasons why IAM is important in the cloud include:

- Security: IAM helps to reduce the risk of unauthorized access to sensitive data and systems, and helps to ensure that data is protected in accordance with relevant security and compliance standards.
- Compliance: Many industries and regions have specific regulatory requirements for data protection and access control. IAM helps organizations comply with these requirements by enforcing access policies and providing audit trails of user activity.
- Efficiency: IAM can help streamline user authentication and authorization processes, and reduce the administrative burden of managing user accounts and access to cloud resources.
- Cost-effectiveness: By ensuring that only authorized users have access to cloud resources, IAM can help reduce the risk of data breaches and other security incidents can be costly to remediate.

In summary, IAM is an essential part of cloud security and compliance, and helps organizations manage user access to cloud-based resources in a way that is secure, efficient, and cost-effective.

## Cloud Access Controls

Granular controls can be as specific as putting restrictions on which IP addresses and resource types may access network assets, or users may be allowed to access applications only on certain dates or at specific times of day. The Google authenticator app provides an additional layer of security in the two-step verification process by allowing user identities to be verified using an OTP. Other two-factor authentication options include verification through an existing Google Account or the use of a hardware token in the form of a physical USB key.

User lifecycle management tools ensure access is granted and revoked at the appropriate times and users leaving the network are properly deprovisioned. Like conditional access, the provisioning process relies on rule-based access rather than rigid and sometimes limiting role-based access to provide the proper permissions to each user in any given workflow.

## FIDO 2

Fast Identity Online is a passwordless standard originally created by the FIDO Alliance to require better authentication standards for passwords and logins. The FIDO2 Project is a joint effort between the FIDO Alliance and the World Wide Web Consortium whose goal is to create strong authentication for the web. FIDO2 is an authentication standard that enables passwordless login to online services and is used in cloud access control systems to enhance security. It relies on public-key cryptography and biometric or PIN verification to authenticate users.

## Out-of-band authentication (OOBA)

Out-of-band authentication (OOBA) is a security technique used to verify the identity of a user during an authentication process. It involves using a seperate communication channel or path to verify the user's identity, in addition to the primary communication channel used for the transaction.

For example, when a user logs into an online banking system, the bank might send a one-time code to the user's registered mobile phone number as a form of OOBA. The user would then need to enter this code on the banking website to complete the login process. By using a separate communication channel, OOBA provides an extra layer of security that makes it more difficult for attackers to intercept or manipulate the authentication process.

OOBA authentication is managed using digital X.509 certificates, with each device carrying an individual certificate to ensure the proper permissions are granted. X.509 is a widely used standard for public key infrastructure (PKI) that defines the format for digital certificates and the rules for their use. X.509 certificates are commonly used for authentication, encryption, and digital signatures.

## Middleware in the Cloud

Middleware in the cloud refers to software components or services that enable communication and integration between different cloud-based applications, services, and infrastructure components. 

Cloud middleware is designed to provide a platform-agnostic abstraction layer between the various components of a cloud-based system, allowing developers to create and deploy applications and services that can be run on different cloud platforms without being tied to a specific cloud infrastructure.

Examples of cloud middleware services include messaging and queuing systems, API gateways, service meshes, and workflow engines. These middleware services enable developers to build distributed applications that can scale horizontally, handle large amounts of data, and work seamlessly with other cloud-based services and infrastructure components. 

Middleware is an important component of cloud architecture, as it helps to abstract away the complexity of cloud infrastructure and enables developeres to focus on building scalable and reliable cloud-based applications and services.

### What Role Does Middleware play?

Seamless connectivity is a key component of cloud computing and is necessary for optimal performance in environments where multiple applications msut be integrated to support unique workflows. Middleware is most often necessary in scenarios where workflows are complex and the number of users is significant. Companies utilizing combinations of third-party and customized apps need reliable integrations to ensure the compatibility of PaaS solutions with existing systems and require easy solutions to the challenges presented when users must access multiple applications to complete standard tasks.

### Middleware Defined

The job of middleware is to connect client requests made via a network to the data being requested. In cloud environments, these tools may be bundled as part of a PaaS offering or obtained through another provider. The link by middleware serves to bridge the gap betwee the front end of an application, which the user sees and interacts with, and the back end, consisting of computers, servers and data storage.

For the purposes of IAM, middleware can be used to simplify authentication and user access across extensive suites of cloud-based applications. Third-party authentication options are known as authentication-as-a-service (AaaS) and are part of the growing number of cloud-based services being established to support the many businesses migrating to the cloud.

### Middleware and Integrations

One significant challenge of cloud migration is maintaining a seamless user experience when new applications are integrated into the cloud environment. As businesses scale up, additional applications must be deployed to meet changing needs. Each new application necessitates a new integration, and without the appropriate middleware, users would be prompted for login credentials each time they moved between applications. The resulting bottleneck interrupts workflows and has a negative impact on efficency.

Middleware provides a solution to the problem by acting as an intermediary between users and all the applications to which they need access. An object request broker (ORB) is a type of middleware often employed to relay information between users and applications by making use of the common object request broker architecture (COBRA). ORBs can be modified to handle security requests, making them flexible tools for handling authentication using a variety of methods, including two-factor authentication, MFA and SSO.

### Middleware and Security

When put into action, middleware minimizes the risk associated with users interacting with multiple applications across business networks. Deploying more applications creates additional points of vulnerability requiring secure authentication methods to prevent data theft and loss. Middleware ensures users accessing each application have the permissions to interact with the software and the data it handles.

Middleware must be configured to recognize the permissions granted to each user based on roles, requests or specific conditions so that the correct level of access is allowed when a user signs into the system. AaaS providers include tools such as automated provisioning to prevent uninteded denial of access or unauthorized user access to sensitive information. Automation may also be employed to simplify user lifecycle management by handling both onboarding and offboarding, ensuring users are properly deprovisioned when a particular level of access is no longer required.

## Choosing a Cloud Provider

Although many PaaS providers have similiar basic offerings, the unique needs of a business must be taken into account when selecting a cloud platform solution. Companies must consider the challenges presented by:

- Workflow structure
- Remote employees
- BYOD policies
- The need for conditional or granular access
- User lifecycle management

With these needs in mind, PaaS evaluation should begin with the basics, such as cost and the potential for increased productivity. Ease of implementation is another important concern, as is the amount of training necessary to help employees transition from an existing system to a cloud-based platform.

Detailed evaluation of potential PaaS solutions meeting budget and resource requirements may be narrowed down using the following criteria:

- AUTHENTICATION: Is the provider using a reliable authentication protocol, such as MFA or SSO, to control access for its own employees?
- DATA CENTER LOCATIONS: Where is data stored, and will local regulations affect security? Are the data centers close enough to users to ensure uninterrupted access to applications?
- DATA CONFIDENTIALITY: How does the provider ensure information remains private? Is encryption an integral part of the platform?
- PRIVACY POLICIES: How is the provider meeting regulations such as PCI DSS, HIPPAA, GPPR and the California Consumer Privacy Act?
- RECORDS: Does the provider log user access and activities? Are detailed records or reports avialable to validate routine audits?
- SECURITY: Does the provider have a strong security governance strategy? How does it remediate the consequences of security breaches? Are additional security tools available?
- STANDARDS COMPLIANCE: Will using the provider allow businesses to maintain compliance with security standards? What standards is the provider governed by, and how is the required level of compliance maintained?

Specialised certifications further validate the security of a cloud platform. ISO 27001 certification is meant to ensure the security used to protect data is "coherent and comprehensive." Under this certification, risk levels must be assessed, risk controls put in place and protocols re-evaluated and updated as security needs change.

Cloud platform providers carrying the Security Trust and Assurance Registry (STAR) certification have been evaluated by third parties with Cloud Security Alliance (CSA) accreditation using a detailed set of criteria, including standards relating to security and audit management. Launched by the CSA and the British Standards Institution (BSI) in 2023, the STAR certification program provides businesses with another way to evaluate PaaS providers and choose the best option based on security requirements.

Addressing the security concerns created by a growing mobile workforce using a diverse range of devices to connect to corporate networks requires a knowledgeablke approach to modern IAM policies and familiarity with the tools available from popular cloud platforms. With the average cost of a data breach rising and 71 percent of companies reporting at least one data breach, a focus on better identity management and access control is critical.

Preserving data integrity requires IAM policies designed to clearly define user roles and privileges and control access to applications within cloud computing platforms. Businesses planning to invest in cloud platforms and move more computing infrastructure to the cloud must carefully assess the security controls available and seek PaaS solutions designed to integrate with, supplement and strengthen existing security frameworks.

As businesses move into the future and embrace updated technologies, flexibility in cloud environments will become more important, and security concerns will continue to evolve. Today's top cloud platform providers offer scalable, customizable solutions with built-in IAM tools, and it's up to IT specialists to identify the unique concerns of the businesses for which they work and choose the best solution to address workflow needs and security requirements.