# CRD 4 - Access Request and Approval

An access may be needed immediately or scheduled for some future date. Access requests should be accepted and approved only if they are consistent with business requirements.
This is typically done in two steps:

- Request validation: Automatic inspection of a request to check whether it violates any business rules. For example, requests should not trigger violations of SoD rules, and should not specify invalid department or location codes etc.
- Request authorization: Trivial requests, such as self-service updates to a user's phone number, can be processed immediately. Requests that originate from a trusted system or person may not require further authorization. Examples include requests that are based on an authoritative data feed from a human resources system or that are entered by a trustworthy person such as the CFO.

All other requests should be reviewed by business stakeholders before they are fulfilled. The following entities may be appointed to approve access:

- Managers
- Resource Owners
- Security Officers

It is adisable to invite multiple authorizers to approve any given request. Typically this means inviting the owners of every resource being added plus the manager of the requests recipient.

Some exceptions to this rule may apply. In particular, business owners and executives above a certain level in the organization may not require managerial approval for their access rights.

Also, a user should not be allowed to approve his own change requests. This workflow engine should check the list of authorizers prior to sending out invitations and if the requester was identified as an authorizer, the system must request approval from the next person in the approval chain.

In an automated workflow system vs. a manual process, it is possible to invite all authorizers at the same time. This minimizes the total time between request submission and fulfillment. As long as all the required approvals are provided, there is no security benefit to serializing reviews and approvals. Supporting multiple, concurrent authorizers leads to a possible situation where some authorizers approve a request, while others reject it. The simplest way to handle this possibility is to assume that any rejections that occur prior to the request being approved act as a veto and block the request entirely. Whether a request is approved or rejected, the request should be closed and all parties must be notified to provide a chance to object access rejections and approvals.

# Access Request Form

An account request form is used to request, add, modify, or delete a person's access to systems and resources. It must include information about the user, requestor, requested access, approvers, and dates.

![Access Request Procedure](image.png)

Example of an Access Request Procedure
https://www.integrify.com/system-access-requests/