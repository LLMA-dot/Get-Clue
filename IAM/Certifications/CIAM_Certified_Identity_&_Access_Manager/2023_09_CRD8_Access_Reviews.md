# CRD 8 - Access Review & Re-Certification

## Table of Contents

1. [Access Reviews](#Access-Reviews)
2. [Access Re-Certification](#access-re-certification)
3. [Best Practice for Access Re-Certification](#best-practice-for-access-re-certification)

## Access Reviews

Regulatory compliance requirements and security policies increasingly demand that oreganizations maintain effective controls over who has access to sensitive corporate information and personal data of employees and customers.

Consider the following:

- Systems must limit access to the right users and within the right periods of time.
- Organizations must be able to provide auditable evidence that these controls are in place and effective.
- Organizations must be able to report which users currently have and had in the past, access to sensitive data.

Meeting these requirements can be challenging as users often have unique and changing business responsibilities, thus making their entitlements difficult to model using formal roles and rules.

The difficulty in modeling complex, heterogeneous entitlements is compounded by the fact that although users accoumulate entitlements over time, they rarely ask IT to terminate old, unneeded rights.

These challenges together mean that it is difficult to model all of the entitlements that users need across multiple systems and applications at a single point in time, and likely impossible to model those needs for thousands of users, over multiple systems, over an extended period of time.

## Access Re-Certification

Access recertification is a process by which business stakeholders are periodically invited to review entitlements, sign-off on entitlements that appear to be reasonable and flag questionable entitlements for possible removal.

- Discovery: Before entitlements can be reviewed, they have to be collected from systems and applications, and mapped to users. Technical information should be replaced by simple descriptions that reviewers will understand.
- Identify reviewers: Options include user managers who are asked to review their subordinates, application or data owners who are asked to review lists of users who can access their applications or data, and security officers who are asked to review high risk entitlements.
- Review timing and frequency: The frequency may vary with the business risk posed by the entitlements in question.
- Types of entitlements: The highest level review is of employment status to make sure they are still employed and whether they still have access to any systems. Slightly more granular is the review of roles. For example, should the user in question still have these roles? At the lowest level of granularity are basic entitlements. For example, should the user in question have a login ID on this system or belong to this security group?
- Which entitlements warrant a review? Not every entitlement poses a significant business risk. User membership in the social committee mailing list is not really worth reviewing, for example. Some determination must be made of the risk level posed by each entitlement, as this forms the basis for deciding whether to review it and how often.
- What happens to denied entitlements? Reviewers may flag entitlements as inappropriate, in which case something should be done. Does this raise a work order in an IT issue management system or trigger a connector to revoke the entitlement immediately? Should further reviews take place before the entitlement is reviewed?

## Best Practice for Re-Certification

Some best practices for access re-certification are:

- Go through the access recertification cleanup process at least once before starting to define roles. The cleanup will make it easier to identify sets of users with identical security entitlements.
- Extract entitlement data from integrated systems regularly - e. g. every 24 hours. This will allow reviewers to comment on current, actual entitlements rather than out-of-date data.
- Give high priority to defining clear, business-friendly descriptions for every entitlement.
- As roles are defined, enable reviewers to approve the roles assigned to a user, rather than the user's (more numerous) fine-grained entitlements.
- For small applications, invite application owners to review users with access.
- For large applications, invite managers to review their subornitate's access, since application owners will not know the users personally.
- Invite managers to validate the employment status of all users regularly (.e. g. quarterly) to eliminate ophan accounts.

