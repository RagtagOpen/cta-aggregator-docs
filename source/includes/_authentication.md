# Authentication

Reading from the CTA Aggregator requires no authentication.  However, if you want to create a resource, you
will need to register your app and obtain a developer key and secret.

To get these, to send an email to <a href='mailto:ctaaggregator@ragtag.org'>ctaaggregator@ragtag.org</a>.

Once you have these, you can obtain authentication tokens from the `/authentications` endpoint.

The CTA Aggregator API follows the [JWT spec.](https://tools.ietf.org/html/rfc7519) For more information regarding this standard, consult RFC7519.
The authentication flow for the cta-aggregator proceeds as follows:

## Successful Authentication
> To authenticate, use the following example.
> Make sure to replace `api-key` with your API key and `api-secret` with your API secret

```shell
# Set the api key and secret in the authorization header
curl -X POST "http://localhost:3000/v1/authentications"
  -H "AUTHORIZATION: api-key:api-secret"
```

> The above command returns JSON structured like this:

```json
  {
    "jwt": "xxxx.yyyy"
  }
```

> Subsequent Authenticated Request:

```shell
# set the JWT in the authorization header
curl -X POST "http://localhost:3000/some-protected-endpoint"
  -H "AUTHORIZATION: Bearer xxxx.yyyy"
```

> The above request should return a 200 status response if authentication is successful

Authentication starts with an `api-key` and an `api-secret` set in an authorization header as such:

`Authorization: api-key:api-secret`

If the server can successfully validate that the key and secret belong to a requesting user, it will respond with a 201, with a body containing a JWT token.

The returned token represents a `sub` claim which can be used to successfully authenticate a user. Setting that token to the `HTTP_AUTHORIZATION` header of subsequent requests will result in 200 level response.

![Successful Authentication](images/successful_auth.svg "successful authentication ladder diagram")

*NOTE: For security purposes, this API will only respond to https requests*

<aside class="notice">
You must replace <code>api-key</code> with your personal API key and <code>api-secret</code> with your personal API secret
</aside>
## Unsuccessful Authentication

```shell
curl -X POST "http://localhost:3000/v1/authentications"
  -H "AUTHORIZATION: wrong-api-key:or-secret"
```
> The above command will return a 404 when the api key or secret is invalid

If the server cannot successfully validate that the key and secret belong to a requesting user, it will respond with a 404.

![Unsuccessful Authentication](images/unsuccessful_auth.svg "unsuccessful authentication ladder diagram")
## JWT Expiration

```shell
# set the JWT in the authorization header
curl -X POST "http://localhost:3000/some-protected-endpoint"
  -H "AUTHORIZATION: Bearer xxxx.yyyy"
```
> The above command will return a 401 when the JWT has expired

All JWTs issued by the server will expire after 24 hours. When a token expires, subsequent requests using that token will result in a 401 response.

![JWT Expires](images/jwt_expires.svg "expired jwt ladder diagram")
## Incorrect JWT Sent

```shell
# set a bad JWT in the authorization header
curl -X POST "http://localhost:3000/some-protected-endpoint"
  -H "AUTHORIZATION: Bearer abcd.efgh"
```
> The above command will return a 401 when the JWT is incorrect.

An incorrect JWT will also result in a 401 response.

![Bad JWT](images/bad_jwt.svg "bad jwt ladder diagram")
