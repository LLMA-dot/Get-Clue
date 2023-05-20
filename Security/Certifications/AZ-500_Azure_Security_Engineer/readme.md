![image](https://user-images.githubusercontent.com/66136128/235411771-071401c7-b4d2-4835-b5dc-e9348cbf705d.png)

# Certificaton Details

The Azure security engineer implements, manages, and monitors security for resources in Azure, multi-cloud, and hybrid environments as part of an end-to-end infrastructure. They recommend security components and configurations to protect identity & access, data, applications, and networks.

Responsibilities for an Azure security engineer include managing the security posture, identifying and remediating vulnerabilities, performing threat modelling, and implementing threat protection. They may also participate in responding to security incidents.

Azure security engineers work with architects, administrators, and developers to plan and implement solutions that meet security and compliance requirements.

The Azure security engineer should have practical experience in administration of Microsoft Azure and hybrid environments. The Azure security engineer should have a strong familiarity with compute, network, and storage in Azure, as well as Azure Active Directory, part of Microsoft Entra.

# Certification Journey

What follows is a documentation of my exam prep. Note that this is not what I recommend to you; simply documenting my own progress. You may be a lot faster or you may need more time. It always depends how much time you are able to devote to the topic.

> "Your focus determines your reality."

06/01/2023 - Studies begin.<br>
10/02/2023 - Learning Paths completed; beginning deep dives / labs.<br>
01/05/2023 - Daily exam crams / labs / John Savill videos.<br>
18/05/2023 - Re-checking weak points (SQL, Networking, Storage)

# My Study Materials

Check the current exam objectives [here](https://learn.microsoft.com/en-us/certifications/resources/study-guides/az-500). These do change frequently and I will not keep them updated unless I am working on a re-certification.

## Learning Paths on Learn.Microsoft.com

The learning paths on Microsofts homepage are really good. They will not get you all the way to exam-ready, but I've always found them to be a solid foundation for what you need to learn and to find your weakest areas for the exam. They also also updated constantly with new topics of the exams.

[AZ-500: Manage Identity & Access](https://learn.microsoft.com/en-us/training/paths/manage-identity-access/)<br>
[AZ-500: Implement Platform Protection](https://learn.microsoft.com/en-us/training/paths/implement-platform-protection/)<br>
[AZ-500: Secure your Data and Applications](https://learn.microsoft.com/en-us/training/paths/secure-your-data-applications/)<br>
[AZ-500: Manage Security Operation](https://learn.microsoft.com/en-us/training/paths/manage-security-operation/)<br>

## John Savill's AZ-500 Playlist

Up next, "the man", John Savill:

[John Savill's Technical Training: Azure AD Overview](https://www.youtube.com/watch?v=EUVKEhiHYG0)<br>
[John Savill's Technical Training: Azure Master Class V2 - Module 2 - Identity](https://www.youtube.com/watch?v=6Vm-h_3nKjc)<br>

## Further Learning

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
- Configure your tenant for Microsoft Entra Verified ID ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/verifiable-credentials/verifiable-credentials-configure-tenant))<br>
- Grant tenant-wide Admin Consent to an Application ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/grant-admin-consent))<br>
- How and why Applications are added to Azure AD ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/develop/active-directory-how-applications-are-added))<br>
- Quickstart: Configure a client application to access a web API ([learn.microsoft.con Link](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-configure-app-access-web-apis))<br>
- Manage consent to applications and evaluate consent requests ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/manage-consent-requests))<br>
- Microsoft identity platform and OAuth 2.0 authorization code flow ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow))<br>
- Enable Self-service Application Assignment ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/manage-self-service-access))<br>
- Lock your Resources to protect your Infrastructure ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources))<br>

### Secure networking (20–25%)

- Enable Containers to use Azure Virtual Network Capabilities ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-network/container-networking-overview))<br>
- Network Security Groups ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview))<br>
- Flow logs for network security groups ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/network-watcher/network-watcher-nsg-flow-logging-overview))<br>
- Virtual Network Traffic Routing ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-udr-overview))<br>
- What is Azure VPN Gateway? ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpngateways))<br>
- What is Azure Front Door? ([ Learn.Microsoft.com LInk ](https://learn.microsoft.com/en-us/azure/frontdoor/front-door-overview))<br>
- Azure DDoS Protection frequently asked questions ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/ddos-protection/ddos-faq))<br>
- VPN Gateway design ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/vpn-gateway/design))<br>
- What is a secured virtual hub? ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/firewall-manager/secured-virtual-hub))<br>
- Configure Azure Storage Firewalls and Virtual Networks ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/storage/common/storage-network-security))<br>
- Create, change, or delete a Virtual Network Peering ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-manage-peering))<br>
- ExpressRoute encryption ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/expressroute/expressroute-about-encryption)<br>
- Tutorial: Log network traffic to and from a virtual machine using the Azure portal ([Learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/network-watcher/network-watcher-nsg-flow-logging-portal))<br>
- Require secure transfer to ensure secure connections ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/common/storage-require-secure-transfer))<br>
- Quickstart: Create an Azure Front Door profile - Azure portal ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/frontdoor/create-front-door-portal))<br>
- Application security groups ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-network/application-security-groups))<br>
- Securing PaaS deployments ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/security/fundamentals/paas-deployments))<br>
- Choose between virtual network peering and VPN gateways ([ Learn.microsoft.com Link ](https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/vnet-peering))<br>
- Integrate your app with an Azure virtual network ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/app-service/overview-vnet-integration)<br>

### Secure compute, storage, and databases (20–25%)

- How to connect using Remote Desktop and sign on to an Azure Virtual Machine running Windows ([ Learn.microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/connect-rdp))<br>
- Cannot connect remotely to a VM because RDP Port is not enabled in NSG ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/troubleshoot/azure/virtual-machines/troubleshoot-rdp-nsg-problem))<br>
- Use the Linux diagnostic extension 4.0 to monitor metrics and logs ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/virtual-machines/extensions/diagnostics-linux))<br>
- Store Business-critical Blob Data with immutable Storage ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/blobs/immutable-storage-overview))<br>
- Enable and manage Azure Storage Analytics Metrics (classic) ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/common/manage-storage-analytics-metrics))<br>
- Microsoft Client Tools for Working with Azure Storage ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/common/storage-explorers))<br>
- Customer-managed keys for Azure Storage encryption ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/common/customer-managed-keys-overview))<br>
- Configure customer-managed keys in the same tenant for an existing storage account ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/common/customer-managed-keys-configure-existing-account))<br>
- Enable infrastructure encryption for double encryption of data ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/common/infrastructure-encryption-enable))<br>
- Enable Azure Active Directory Domain Services authentication on Azure Files ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/files/storage-files-identity-auth-active-directory-domain-service-enable))<br>
- Choose how to authorize access to blob data in the Azure portal ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/storage/blobs/authorize-data-operations-portal))<br>
- Create alerts for Azure SQL Database and Azure Synapse Analytics using the Azure portal ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-sql/database/alerts-insights-configure-portal))<br>
- Use Azure Active Directory authentication ([Learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-sql/database/authentication-aad-overview))<br>
- Tutorial: Set up Azure Active Directory authentication for SQL Server ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/sql/relational-databases/security/authentication-access/azure-ad-authentication-sql-server-setup-tutorial))<br>
- What is Azure Firewall? ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/firewall/overview))<br>
- Deploy and Configure Azure Firewall in a Hybrid Network using the Azure portal ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/firewall/tutorial-hybrid-portal))<br>
- VNet peering and Azure Bastion ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/bastion/vnet-peering))<br>
- Tutorial: Set up Azure Active Directory Authentication for SQL Server ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/sql/relational-databases/security/authentication-access/azure-ad-authentication-sql-server-setup-tutorial))<br>
- Azure SQL transparent data encryption with customer-managed key ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-sql/database/transparent-data-encryption-byok-overview))<br>
- Get started with Azure SQL Managed Instance auditing ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/auditing-configure))<br>
- SQL Advanced Threat Protection ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-sql/database/threat-detection-overview))<br>
- Introduction to the Azure Desired State Configuration Extension Handler ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-overview))<br>
- Use diagnostics settings for Recovery Services vaults ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/backup/backup-azure-diagnostic-events)<br>
- AKS-managed Azure Active Directory Integration ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/aks/managed-azure-ad))<br>
- Integrate Azure Active Directory with Azure Kubernetes Service using the Azure CLI (Legacy) ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/aks/azure-ad-integration-cli))<br>
- AKS-managed Azure Active Directory Integration ([ Learn.Microsoft.Com Link ](https://learn.microsoft.com/en-us/azure/aks/managed-azure-ad))<br>
- Use TLS with an Ingress Controller on Azure Kubernetes Service (AKS) ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/aks/ingress-tls)<br>
- Use a Service Principal with Azure Kubernetes Service (AKS) ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/aks/kubernetes-service-principal))<br>
- Operation and Maintenance of AKS Applications ([Codeproject.com Link](https://www.codeproject.com/Articles/3211864/Operation-and-Maintenance-of-AKS-Applications))<br>
- Configure TLS mutual authentication for Azure App Service ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/app-service/app-service-web-configure-tls-mutual-auth))<br>
- Add and manage TLS/SSL certificates in Azure App Service ([Learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/app-service/configure-ssl-certificate))<br>
- Continuous deployment to Azure App Service ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/app-service/deploy-continuous-deployment))<br>
- Use a TLS/SSL certificate in your code in Azure App Service ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/app-service/configure-ssl-certificate-in-code))<br>
- Authenticate with Azure Container Registry from Azure Kubernetes Service ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/aks/cluster-container-registry-integration))<br>
- Content Trust in Azure Container Registry ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-content-trust)<br>
- Authenticate with an Azure Container Registry ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-authentication))<br>
- Azure Defender for Container Registries in Azure Security Center ([ Learn.Microsoft.com Link](https://charbelnemnom.com/scan-container-images-in-azure-container-registry-with-azure-security-center))<br>
- Define a stored Access Policy ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/rest/api/storageservices/define-stored-access-policy))<br>
- Azure Container Registry Roles and Permissions ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-roles?tabs=azure-cli))<br>
- Always Encrypted ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/sql/relational-databases/security/encryption/always-encrypted-database-engine))<br>
- Microsoft Antimalware for Azure Cloud Services and Virtual Machines ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/security/fundamentals/antimalware))<br>
- Azure VM Antimalware Extension Management ([ Cloudcorner.Gr Link ](https://www.cloudcorner.gr/microsoft/azure/azure-vm-antimalware-extension-management/))<br>
- Tutorial: Deploy a Multi-container Group using a Resource Manager Template ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-multi-container-group))<br>
- Set Environment Variables in Container Instances ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-environment-variables))<br>
- Microsoft Azure: Security Center Just-in-time Deep Dive ([ Devopspertise.com Link ](https://www.devopspertise.com/2020/01/19/azure-security-center-just-in-time-deep-dive/))<br>
- Add and manage TLS/SSL certificates in Azure App Service ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/app-service/configure-ssl-certificate))<br>
- Secure access to data in Azure Cosmos DB ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/cosmos-db/secure-access-to-data))<br>

### Manage security operations (25–30%)

- Manage Access to Log Analytics Workspaces ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/manage-access))<br>
- What are Azure Monitor alerts? ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview))<br>
- Create a new Alert Rule ([Learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-create-new-alert-rule))<br>
- Azure Monitor Insights overview ([Learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-monitor/insights/insights-overview))<br>
- Deploy Azure Monitor: Alerts and automated actions ([Learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-monitor/best-practices-alerts))<br>
- Create and manage Action Groups in the Azure Portal ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups))<br>
- Tutorial: Create a metric alert for an Azure resource ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-US/Azure/azure-monitor/alerts/tutorial-metric-alert))<br>
- Kusto Queries - Learn Common Operators ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/tutorials/learn-common-operators?pivots=azuremonitor))<br>
- Monitor Virtual Machines with Azure Monitor: Collect Data ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/monitor-virtual-machine-data-collection))<br>
- Update Management Overview ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/automation/update-management/overview))<br>
- Use dynamic groups with Update Management ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/automation/update-management/configure-groups))<br>
- Azure Key Vault Security ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/key-vault/general/security-features))<br>
- Quickstart: Set and retrieve a secret from Azure Key Vault using the Azure portal ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/key-vault/secrets/quick-create-portal))<br>
- Use Azure Key Vault to pass secure Parameter Value during Deployment ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/key-vault-parameter))<br>
- Create and Configure a Key Vault for Azure Disk Encryption on a Windows VM ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/disk-encryption-key-vault))<br>
- Key Vault Azure Disk Encryption FaQ ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/disk-encryption-faq))<br>
- Accessing Azure Key Vault From Azure Runbook ([learn.microsoft.com Link](https://www.rahulpnath.com/blog/accessing-azure-key-vault-from-azure-runbook))<br>
- Soft-delete will be enabled on all key vaults ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/key-vault/general/soft-delete-change))<br>
- Azure Key Vault soft-delete overview ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/key-vault/general/soft-delete-overview))<br>
- Configure cryptographic key auto-rotation in Azure Key Vault ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/key-vault/keys/how-to-configure-key-rotation))<br>
- What is Azure Blueprints? ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/governance/blueprints/overview))<br>
- Quickstart: Define and assign a blueprint in the portal ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/governance/blueprints/create-blueprint-portal))<br>
- Understand Resource Locking in Azure Blueprints ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/governance/blueprints/concepts/resource-locking))<br>
- Transfer Billing Ownership of an MOSP Azure Subscription to another Account ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/cost-management-billing/manage/billing-subscription-transfer))<br>
- Associate or add an Azure Subscription to your Azure Active Directory Tenant ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-how-subscriptions-associated-directory))<br>
- FAQ - General questions about Microsoft Defender for Cloud ([ Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/faq-general))<br>
- Automate responses to Microsoft Defender for Cloud triggers ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/workflow-automation))<br>
- Manage security policies ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/tutorial-security-policy))<br>
- Azure Policy built-in definitions for Microsoft Defender for Cloud ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/policy-reference))<br>
- Customize the set of standards in your regulatory compliance dashboard ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/update-regulatory-compliance-packages))<br>
- Quickstart: Configure email notifications for security alerts ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/configure-email-notifications))<br>
- Deploy a Bring Your Own License (BYOL) vulnerability assessment solution ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/deploy-vulnerability-assessment-byol-vm))<br>
- Enable Microsoft Defender for SQL servers on machines ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-sql-usage))<br>
- What is Azure Policy ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/governance/policy/overview))<br>
- Understand Azure Policy Effects ([ Learn.Microsoft.com Link ](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects))<br>
- Create a custom Azure Security Center recommendation with Azure Policy ([Zimmergren.net Link](https://zimmergren.net/create-custom-security-center-recommendation-with-azure-policy/))<br>
- Apply governance policy to multiple Azure subscriptions with management groups ([4sysops.com Link](https://4sysops.com/archives/apply-governance-policy-to-multiple-azure-subscriptions-with-management-groups/))<br>
- Remediate non-compliant resources with Azure Policy ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/governance/policy/how-to/remediate-resources))<br>
- Determine Causes of Non-Compliance ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/governance/policy/how-to/determine-non-compliance))<br>
- What is Microsoft Defender for Cloud? ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-cloud-introduction))<br>
- Create custom Azure security initiatives and policies ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/custom-security-policies))<br>
- Secure your management ports with just-in-time access ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/just-in-time-access-usage))<br>
- Understanding just-in-time (JIT) VM access ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/defender-for-cloud/just-in-time-access-overview))<br>
- Connect Microsoft Defender for Cloud alerts to Microsoft Sentinel ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/connect-defender-for-cloud))<br>
- Use Jupyter notebooks to hunt for security threats ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/notebooks))<br>
- Tutorial: Respond to threats by using playbooks with automation rules in Microsoft Sentinel ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/tutorial-respond-threats-playbook))<br>
- Windows Firewall connector for Microsoft Sentinel ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/data-connectors/windows-firewall))<br>
- Create custom analytics rules to detect threats ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/detect-threats-custom))<br>
- Relate alerts to incidents in Microsoft Sentinel ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/relate-alerts-to-incidents))<br>
- Tutorial: Respond to threats by using playbooks with automation rules in Microsoft Sentinel ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/tutorial-respond-threats-playbook))<br>
- Create and customize Microsoft Sentinel playbooks from built-in templates ([Learn.Microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/use-playbook-templates))<br>
- Keep track of data during hunting with Microsoft Sentinel ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/bookmarks))<br>
- Automatically create incidents from Microsoft security alerts ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/create-incidents-from-alerts))<br>
- Azure Active Directory Identity Protection connector for Microsoft Sentinel ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/sentinel/data-connectors/azure-active-directory-identity-protection))<br>
- About branches and branch policies ([earn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies-overview))<br>
- Cross-region replication in Azure: Business continuity and disaster recovery ([learn.microsoft.com Link](https://learn.microsoft.com/en-us/azure/reliability/cross-region-replication-azure))<br>

