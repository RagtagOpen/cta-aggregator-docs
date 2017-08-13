# Targets

A target resource contains the following attributes.

Name    | Type | Description
--------- |  ----------- |  -----------
identifiers | array | A unique string array of identifiers in the format [system name]:[id]. See the general concepts document for more information about identifiers.
created_at | datetime | A read-only property representing the date and time the resource was created on the local system.
updated_at | datetime |A read-only property representing the date and time the resource was last modified on the local system.

## Get All Targets

```shell
curl -X GET "http://localhost:3000/v1/targets"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "360cda45-6d93-42ae-a0fb-e1f6ebdba564",
            "type": "targets",
            "links": {
                "self": "http://localhost:3000/v1/targets/360cda45-6d93-42ae-a0fb-e1f6ebdba564"
            },
            "attributes": {
                "organization": "Senate Committee on Health",
                "given_name": null,
                "family_name": null,
                "ocdid": null,
                "postal_addresses": [],
                "email_addresses": [],
                "phone_numbers": [
                    {
                        "primary": true,
                        "number": "202-224-5375",
                        "number_type": "work"
                    }
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/targets/360cda45-6d93-42ae-a0fb-e1f6ebdba564/relationships/user",
                        "related": "http://localhost:3000/v1/targets/360cda45-6d93-42ae-a0fb-e1f6ebdba564/user"
                    }
                }
            }
        },
        {
            "id": "b92ff013-174d-4767-8892-645898cc5778",
            "type": "targets",
            "links": {
                "self": "http://localhost:3000/v1/targets/b92ff013-174d-4767-8892-645898cc5778"
            },
            "attributes": {
                "organization": "House Committee on Education and the Workforce",
                "given_name": null,
                "family_name": null,
                "ocdid": null,
                "postal_addresses": [],
                "email_addresses": [],
                "phone_numbers": [
                    {
                        "primary": true,
                        "number": "202-225-4527",
                        "number_type": "work"
                    }
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/targets/b92ff013-174d-4767-8892-645898cc5778/relationships/user",
                        "related": "http://localhost:3000/v1/targets/b92ff013-174d-4767-8892-645898cc5778/user"
                    }
                }
            }
        },
        {
            "id": "3718fcd2-4317-4ed2-8548-bba7af7d5d2a",
            "type": "targets",
            "links": {
                "self": "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a"
            },
            "attributes": {
                "organization": " Department of Education",
                "given_name": "Betsy",
                "family_name": "DeVos",
                "ocdid": null,
                "postal_addresses": [],
                "email_addresses": [],
                "phone_numbers": [
                    {
                        "primary": true,
                        "number": "202-401-3000",
                        "number_type": "work"
                    }
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a/relationships/user",
                        "related": "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a/user"
                    }
                }
            }
        },
        {
            "id": "e696019e-f2d5-4097-b046-1a9efe2d2965",
            "type": "targets",
            "links": {
                "self": "http://localhost:3000/v1/targets/e696019e-f2d5-4097-b046-1a9efe2d2965"
            },
            "attributes": {
                "organization": "House Judiciary Committee",
                "given_name": null,
                "family_name": null,
                "ocdid": null,
                "postal_addresses": [],
                "email_addresses": [],
                "phone_numbers": [
                    {
                        "primary": true,
                        "number": "202-225-3951",
                        "number_type": "work"
                    }
                ]
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/targets/e696019e-f2d5-4097-b046-1a9efe2d2965/relationships/user",
                        "related": "http://localhost:3000/v1/targets/e696019e-f2d5-4097-b046-1a9efe2d2965/user"
                    }
                }
            }
        }
    ],
    "links": {
        "first": "http://localhost:3000/v1/targets?page%5Bnumber%5D=1&page%5Bsize%5D=10",
        "last": "http://localhost:3000/v1/targets?page%5Bnumber%5D=1&page%5Bsize%5D=10"
    }
}
```

This endpoint retrieves al targets 

### HTTP Request

`GET http://localhost:3000/v1/targets`

## Get a Specific Target


```shell
curl -X GET  "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a",
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "3718fcd2-4317-4ed2-8548-bba7af7d5d2a",
        "type": "targets",
        "links": {
            "self": "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a"
        },
        "attributes": {
            "organization": " Department of Education",
            "given_name": "Betsy",
            "family_name": "DeVos",
            "ocdid": null,
            "postal_addresses": [],
            "email_addresses": [],
            "phone_numbers": [
                {
                    "primary": true,
                    "number": "202-401-3000",
                    "number_type": "work"
                }
            ]
        },
        "relationships": {
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a/relationships/user",
                    "related": "http://localhost:3000/v1/targets/3718fcd2-4317-4ed2-8548-bba7af7d5d2a/user"
                }
            }
        }
    }
}
```

### HTTP Request

`GET "http://localhost:3000/v1/targets/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the targets to retrieve


## Create a Target

```shell
{
    "data": {
        "type": "targets",
        "attributes": {
            "organization": " Department of Education",
            "given_name": "Betsy",
            "family_name": "DeVos",
            "ocdid": null,
            "postal_addresses": [ {
            	"address_lines": "123 Fake Street",
            	"locality": "Grand Rapids",
            	"region": "MI",
            	"postal_code": "49504"
            	}],
            "email_addresses": [ {
            	"primary": "true",
            	"address": "insano@example.com",
            	"address_type": "work"
            	} ],
            "phone_numbers": [
                {
                    "primary": true,
                    "number": "202-401-3000",	
                    "number_type": "work"
                }
            ]
        }
    }
}
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "9927bf38-dcaa-448c-acc7-4a4920466188",
        "type": "targets",
        "links": {
            "self": "http://localhost:3000/v1/targets/9927bf38-dcaa-448c-acc7-4a4920466188"
        },
        "attributes": {
            "organization": " Department of Education",
            "given_name": "Betsy",
            "family_name": "DeVos",
            "ocdid": null,
            "postal_addresses": [
                {
                    "locality": "Grand Rapids",
                    "region": "MI",
                    "postal_code": "49504"
                }
            ],
            "email_addresses": [
                {
                    "primary": "true",
                    "address": "insano@example.com",
                    "address_type": "work"
                }
            ],
            "phone_numbers": [
                {
                    "primary": true,
                    "number": "202-401-3000",
                    "number_type": "work"
                }
            ]
        },
        "relationships": {
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/targets/9927bf38-dcaa-448c-acc7-4a4920466188/relationships/user",
                    "related": "http://localhost:3000/v1/targets/9927bf38-dcaa-448c-acc7-4a4920466188/user"
                }
            }
        }
    }
}
```

This endpoint creates a new target

### HTTP Request

`POST "http://localhost:3000/v1/targets/`


