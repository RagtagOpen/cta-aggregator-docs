# Authorization

All resources currently obey the same authorization policy.

You can view anything without needing any authentication. 

If you have API credentials, then you can create resources or update the resources you've created.

When updating a resource, you cannot make an update to a resource that was created by another contributor.
The API will reject your request.

HTTP Method   | Authentication Required? | Notes
--------- |  ----------- |  -----------
Get | No | No authentication required to read any resource(s).
POST | Yes | Authentication required but anyone with API credentials can create a resource.
PUT | Yes | Request will be accepted if you created the resource you are updating. 
DELETE | N/A | Deleting not currently permitted.  To get a resource removed, conctact the Ragtag team at <a href='mailto:ctaaggregator@ragtag.org'>ctaaggregator@ragtag.org</a>).
