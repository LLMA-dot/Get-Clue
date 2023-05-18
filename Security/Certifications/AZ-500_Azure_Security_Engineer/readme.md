![image](https://user-images.githubusercontent.com/66136128/235411771-071401c7-b4d2-4835-b5dc-e9348cbf705d.png)

# Certificaton Details

The Azure security engineer implements, manages, and monitors security for resources in Azure, multi-cloud, and hybrid environments as part of an end-to-end infrastructure. They recommend security components and configurations to protect identity & access, data, applications, and networks.

Responsibilities for an Azure security engineer include managing the security posture, identifying and remediating vulnerabilities, performing threat modelling, and implementing threat protection. They may also participate in responding to security incidents.

Azure security engineers work with architects, administrators, and developers to plan and implement solutions that meet security and compliance requirements.

The Azure security engineer should have practical experience in administration of Microsoft Azure and hybrid environments. The Azure security engineer should have a strong familiarity with compute, network, and storage in Azure, as well as Azure Active Directory, part of Microsoft Entra.

# Certification Roadmap

What follows is a documentation of my exam prep. Note that this is not what I recommend to you; simply documenting my own progress. You may be a lot faster or you may need more time. It always depends how much time you are able to devote to the topic.

> "Your focus determines your reality."

06/01/2023 - Studies begin.<br>
10/02/2023 - Learning Paths completed; beginning deep dives / labs.<br>
01/05/2023 - Daily exam crams / labs / John Savill videos.<br>
18/05/2023 - Re-checking weak points (SQL, Storage Policies)

## My Study Materials

Check the current exam objectives [here](https://learn.microsoft.com/en-us/certifications/resources/study-guides/az-500). These do change frequently and I will not keep them updated unless I am working on a re-certification.

### Learning Paths on Learn.Microsoft.com

The learning paths on Microsofts homepage are really good. They will not get you all the way to exam-ready, but I've always found them to be a solid foundation for what you need to learn and to find your weakest areas for the exam. They also also updated constantly with new topics of the exams.

[AZ-500: Manage Identity & Access](https://learn.microsoft.com/en-us/training/paths/manage-identity-access/)<br>
[AZ-500: Implement Platform Protection](https://learn.microsoft.com/en-us/training/paths/implement-platform-protection/)<br>
[AZ-500: Secure your Data and Applications](https://learn.microsoft.com/en-us/training/paths/secure-your-data-applications/)<br>
[AZ-500: Manage Security Operation](https://learn.microsoft.com/en-us/training/paths/manage-security-operation/)<br>

### John Savill's AZ-500 Playlist

Up next, "the man", John Savill:

### Further Learning

Here is a selection of links I used to further prepare for the examination.

This list is not in any specific order. However, it correspondents to the current exam objectives or some questions I have received.

### Manage identity and access (25–30%)

- Quickstart: Set up a tenant ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant))<br>
- Create a Role-assignable Group in Azure Active Directory ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/roles/groups-create-eligible))<br>
- Assign Users and Groups to an Application ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/assign-user-or-group-access-portal))<br>
- Add users, groups, or devices to an administrative unit ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/roles/admin-units-members-add))<br>
- Dynamic Membership Rules for Groups in Azure Active Directory ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-dynamic-membership))<br>
- Configure how Users consent to Applications ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/configure-user-consent?pivots=portal))<br>
- Azure AD Connect Sync: Make a Change to the Default Configuration ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-sync-change-the-configuration))<br>
- Azure AD Connect: Accounts and permissions ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/hybrid/reference-connect-accounts-permissions))<br>
- Create an Access Review of Groups and Applications in Azure AD ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/governance/create-access-review))<br>
- What’s the Difference Between Enabling and Enforcing MFA? ([ Cayosoft.com Link ](http://www.cayosoft.com/difference-enabling-enforcing-mfa/))<br>
- Create an Azure Active Directory Application and Service Principal that can access Resources ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal))<br>
- Restore a deleted Microsoft 365 Group in Azure Active Directory ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-restore-deleted))<br>
- Least privileged roles by Task in Azure Active Directory ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/roles/delegate-by-task))<br>
- Use Risk Detections for User Sign-ins to trigger Azure AD Multi-Factor Authentication or Password Changes ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/authentication/tutorial-risk-based-sspr-mfa))<br>
- Plan and Deploy on-Premises Azure Active Directory Password Protection ([ Learn.Microsoft.com ](https://learn.microsoft.com/en-us/azure/active-directory/authentication/howto-password-ban-bad-on-premises-deploy))<br>
- Eliminate bad Passwords using Azure Active Directory Password Protection ([ Learn.Microsoft.com ](https://learn.microsoft.com/en-us/azure/active-directory/authentication/concept-password-ban-bad))<br>
- Enforce a naming policy on Microsoft 365 groups in Azure Active Directory ([Learn.Microsoft.com](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-naming-policy))<br>
- What are managed identities for Azure resources? ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview))<br>
- Configure Authentication Session Management with Conditional Access ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime))<br>
- Step-by-Step Guide on how to configure Risk-based Conditional Access Policies ([ Rebeladmin.com Link ](http://www.rebeladmin.com/2018/09/step-step-guide-configure-risk-based-azure-conditional-access-policies/))<br>
- Conditional Access: Block access by location ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-policy-location))<br>
- Risk-based Access Policies ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/identity-protection/concept-identity-protection-policies))<br>
- What are Managed Identities for Azure resources? ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview))<br>
- Assign a Managed Identity access to a Resource by using the Azure Portal ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/howto-assign-access-portal))<br>
- What is Azure AD Privileged Identity Management? ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-configure))<br>
- Start using Privileged Identity Management ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-getting-started))<br>
- Assign Azure resource roles in Privileged Identity Management ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-resource-roles-assign-roles))<br>
- Perform an Access Review of Azure Resource and Azure AD roles in PIM ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-perform-azure-ad-roles-and-resource-roles-review))<br>
- Configure Security Alerts for Azure AD Roles in Privileged Identity Management ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-how-to-configure-security-alerts))<br>
- Plan a Privileged Identity Management Deployment ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/pim-deployment-plan))<br>
- Azure Built-in Roles ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles))<br>
- List Azure role assignments using the Azure portal ([learn.microsoft.com](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-list-portal))<br>
- Understand Azure Role definitions ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-definitions))<br>
- Azure Resource Provider Operations ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/role-based-access-control/resource-provider-operations))<br>
- Azure Custom Roles ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles))<br>
- Create or update Azure Custom Roles using the Azure portal ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles-portal))<br>
- Create and assign a custom Role in Azure Active Directory ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/roles/custom-create))<br>
- Cloud Security: Create a Custom RBAC-Role in Microsoft Azure ([ Learn.Microsoft.com Link ](https://petri.com/cloud-security-create-custom-rbac-role-microsoft-azure/))<br>
- Configure your tenant for Microsoft Entra Verified ID ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/verifiable-credentials/verifiable-credentials-configure-tenant)<br>
