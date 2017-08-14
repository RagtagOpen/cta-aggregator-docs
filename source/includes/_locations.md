# Locations

A Location resource is a sub-resource related to an Event.  Each Event has one Location. 
A location resource contains the following attributes.

Name    | Type | Description
--------- |  ----------- |  -----------
venue | string | Optional venue name at the event address, useful for names of buildings. (ex: Smith Hall)
address_lines | Array | An array of strings representing the event’s street address.
locality |string | A city or other local administrative area.
region |string | State or subdivision codes according to ISO 3166-2 (Final 2 alpha digits).
postal_code |string | The region specific postal code, such as a zip code.

For more information on OSDI's Location resource, follow this link: [https://opensupporter.github.io/osdi-docs/events.html#location](https://opensupporter.github.io/osdi-docs/events.html#location).

## Get All Locations

```shell
curl -X GET  "http://localhost:3000/v1/locations"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "cf2e490a-7bed-46d5-8e0a-386dfb365cc8",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8"
            },
            "attributes": {
                "venue": null,
                "address_lines": null,
                "locality": "Santa Fe",
                "region": "NM",
                "postal_code": null
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8/relationships/user",
                        "related": "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8/user"
                    }
                }
            }
        },
        {
            "id": "dca1fc5b-a26b-4a7e-809a-26d8417921c8",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/dca1fc5b-a26b-4a7e-809a-26d8417921c8"
            },
            "attributes": {
                "venue": null,
                "address_lines": null,
                "locality": "New York",
                "region": "NY",
                "postal_code": null
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/dca1fc5b-a26b-4a7e-809a-26d8417921c8/relationships/user",
                        "related": "http://localhost:3000/v1/locations/dca1fc5b-a26b-4a7e-809a-26d8417921c8/user"
                    }
                }
            }
        },
        {
            "id": "2bd08fff-2154-4eaf-8a05-b014f462fa1e",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/2bd08fff-2154-4eaf-8a05-b014f462fa1e"
            },
            "attributes": {
                "venue": null,
                "address_lines": null,
                "locality": "San Francisco",
                "region": "CA",
                "postal_code": null
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/2bd08fff-2154-4eaf-8a05-b014f462fa1e/relationships/user",
                        "related": "http://localhost:3000/v1/locations/2bd08fff-2154-4eaf-8a05-b014f462fa1e/user"
                    }
                }
            }
        },
        {
            "id": "58ad3adb-7cb5-4851-99e4-e9e3f7f6aee1",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/58ad3adb-7cb5-4851-99e4-e9e3f7f6aee1"
            },
            "attributes": {
                "venue": null,
                "address_lines": "3845 S Capitol St SW",
                "locality": "Washington",
                "region": "DC",
                "postal_code": "20032"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/58ad3adb-7cb5-4851-99e4-e9e3f7f6aee1/relationships/user",
                        "related": "http://localhost:3000/v1/locations/58ad3adb-7cb5-4851-99e4-e9e3f7f6aee1/user"
                    }
                }
            }
        },
        {
            "id": "45edada9-947f-4c00-922f-9aaffe0f23a7",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/45edada9-947f-4c00-922f-9aaffe0f23a7"
            },
            "attributes": {
                "venue": null,
                "address_lines": "201 Railroad St N",
                "locality": "Ridgway",
                "region": "CO",
                "postal_code": "81432"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/45edada9-947f-4c00-922f-9aaffe0f23a7/relationships/user",
                        "related": "http://localhost:3000/v1/locations/45edada9-947f-4c00-922f-9aaffe0f23a7/user"
                    }
                }
            }
        },
        {
            "id": "5539972b-9ea8-4c24-8718-4b9c3221a8c8",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/5539972b-9ea8-4c24-8718-4b9c3221a8c8"
            },
            "attributes": {
                "venue": null,
                "address_lines": "Dr Holly Hale Center, 135 Harrison Avenue, Panama City, FL 32405",
                "locality": "Panama City",
                "region": "FL",
                "postal_code": "32401"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/5539972b-9ea8-4c24-8718-4b9c3221a8c8/relationships/user",
                        "related": "http://localhost:3000/v1/locations/5539972b-9ea8-4c24-8718-4b9c3221a8c8/user"
                    }
                }
            }
        },
        {
            "id": "f2765cdc-c4c8-469d-bc2f-93533e655acd",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/f2765cdc-c4c8-469d-bc2f-93533e655acd"
            },
            "attributes": {
                "venue": null,
                "address_lines": "12861 N 8th Ave",
                "locality": "Phoenix",
                "region": "AZ",
                "postal_code": "85029"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/f2765cdc-c4c8-469d-bc2f-93533e655acd/relationships/user",
                        "related": "http://localhost:3000/v1/locations/f2765cdc-c4c8-469d-bc2f-93533e655acd/user"
                    }
                }
            }
        },
        {
            "id": "954de3db-ef9e-4ed5-8809-d3fbd5bb168d",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/954de3db-ef9e-4ed5-8809-d3fbd5bb168d"
            },
            "attributes": {
                "venue": null,
                "address_lines": [],
                "locality": "Minneapolis",
                "region": "MN",
                "postal_code": "55435"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/954de3db-ef9e-4ed5-8809-d3fbd5bb168d/relationships/user",
                        "related": "http://localhost:3000/v1/locations/954de3db-ef9e-4ed5-8809-d3fbd5bb168d/user"
                    }
                }
            }
        },
        {
            "id": "f050ccea-acfd-48d1-a7e2-792773e853a5",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/f050ccea-acfd-48d1-a7e2-792773e853a5"
            },
            "attributes": {
                "venue": null,
                "address_lines": "1700 South Broad Street",
                "locality": "Philadelphia",
                "region": "PA",
                "postal_code": "19145"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/f050ccea-acfd-48d1-a7e2-792773e853a5/relationships/user",
                        "related": "http://localhost:3000/v1/locations/f050ccea-acfd-48d1-a7e2-792773e853a5/user"
                    }
                }
            }
        },
        {
            "id": "9c7b641b-2feb-48a3-b16c-4c1be029d440",
            "type": "locations",
            "links": {
                "self": "http://localhost:3000/v1/locations/9c7b641b-2feb-48a3-b16c-4c1be029d440"
            },
            "attributes": {
                "venue": null,
                "address_lines": "60  Lake St",
                "locality": "Burlington",
                "region": "VT",
                "postal_code": "05401"
            },
            "relationships": {
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/locations/9c7b641b-2feb-48a3-b16c-4c1be029d440/relationships/user",
                        "related": "http://localhost:3000/v1/locations/9c7b641b-2feb-48a3-b16c-4c1be029d440/user"
                    }
                }
            }
        }
    ],
    "links": {
        "first": "http://localhost:3000/v1/locations?page%5Bnumber%5D=1&page%5Bsize%5D=10",
        "next": "http://localhost:3000/v1/locations?page%5Bnumber%5D=2&page%5Bsize%5D=10",
        "last": "http://localhost:3000/v1/locations?page%5Bnumber%5D=3&page%5Bsize%5D=10"
    }
}
```

This endpoint retrieves all locations.

### HTTP Request

`GET http://localhost:3000/v1/locations`

### Filter

You can filter based on the following attributes.

Filter    | Example
--------- |  -----------
locality | `GET "http://localhost:3000/v1/locations?filter[locality]=Detroit"`
region | `GET "http://localhost:3000/v1/locations?filter[region]=ID"`
postal_code | `GET "http://localhost:3000/v1/locations?filter[postal_code]=66001"`


## Get a Specific Location


```shell
curl -X GET  "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "cf2e490a-7bed-46d5-8e0a-386dfb365cc8",
        "type": "locations",
        "links": {
            "self": "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8"
        },
        "attributes": {
            "venue": "Riverfront park",
            "address_lines": '123 Fake Street',
            "locality": "Santa Fe",
            "region": "NM",
            "postal_code": "87501"
        },
        "relationships": {
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8/relationships/user",
                    "related": "http://localhost:3000/v1/locations/cf2e490a-7bed-46d5-8e0a-386dfb365cc8/user"
                }
            }
        }
    }
}

```

This endpoint retrieves a specific location.

### HTTP Request

`GET "http://localhost:3000/v1/locations/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the location to retrieve


## Create a Location

```shell
curl -X POST "http://localhost:3000/v1/locations"
  -H "Content-Type: application/vnd.api+json" 
  -H "Accept: application/vnd.api+json" 
  -H "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJleHAiOjE1MDI2NjMwMjEsInN1YiI6ImI0ZDQ5MDAzLWEyMWYtNGVjZi1hYjM3LTQzMmRkMWM4MzE4MiJ9.Q_QeKrpgvelRZ-XB8gM1B1SSrjeGVEK93HLW2p4SoFJv5zICQV6aFiKyA1lJ8qhrPBzqIPtTgqQBTN9ng0c0PA"
  -d ' {
    "data": {
        "type": "locations",
        "attributes": {
            "venue": "Moe's Cantina",
            "address_lines": "123 Fake Street",
            "locality": "Santa Fe",
            "region": "NM",
            "postal_code": 87501
        }
    }
} '
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "a728f38a-623c-4342-aa89-7ab39fd83c35",
        "type": "locations",
        "links": {
            "self": "http://localhost:3000/v1/locations/a728f38a-623c-4342-aa89-7ab39fd83c35"
        },
        "attributes": {
            "venue": "Moe's Cantina",
            "address_lines": "123 Fake Street",
            "locality": "Santa Fe",
            "region": "NM",
            "postal_code": "87501"
        },
        "relationships": {
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/locations/a728f38a-623c-4342-aa89-7ab39fd83c35/relationships/user",
                    "related": "http://localhost:3000/v1/locations/a728f38a-623c-4342-aa89-7ab39fd83c35/user"
                }
            }
        }
    }
}
```

This endpoint creates an evernt.

### HTTP Request

`POST "http://localhost:3000/v1/locations"`

Requests to create a resource must include a valid JWT token. This token can be obtained from the `authantication` endpoint.
