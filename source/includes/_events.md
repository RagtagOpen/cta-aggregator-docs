# Events

An event resource contains the following attributes.

Name    | Type | Description
--------- |  ----------- |  -----------
identifiers | array | A unique string array of identifiers in the format [system name]:[id]. See the general concepts document for more information about identifiers.
start_date | datetime | The start time for the event.
end_date | datetime | date  The date for all day events.
created_at | datetime | A read-only property representing the date and time the resource was created on the local system.
updated_at | datetime |A read-only property representing the date and time the resource was last modified on the local system.
title | string | The title of the event. Intended for public display rather than administrative purposes.
description | string |  description of the event, usually displayed publicly. May contain text and/or HTML.
browser_url | string | A URL string pointing to the publicly available event page on the web.
origin_system| string | A human readable identifier of the system where this event was created. (ex: “OSDI System”)
featured_image_url| string | A URL string pointing to a publicly available featured image file for this event on the web.
free | boolean | Indicator of whether there is a cost associated with attending the event
location_id| integer | identifier for location associated with event

## Get All Events

```shell
curl -X GET "http://localhost:3000/v1/events"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "b22dec03-2542-41da-a412-2642b76895ce",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce"
            },
            "attributes": {
                "title": "Reception",
                "description": null,
                "browser_url": "https://secure.emilyslist.org/page/contribute/Events_Test",
                "origin_system": "emilyslist:Events_Test",
                "featured_image_url": null,
                "start_date": "2017-07-27T00:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/relationships/location",
                        "related": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/relationships/user",
                        "related": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/user"
                    }
                }
            }
        },
        {
            "id": "4a9cf064-f6a4-4ac0-bdf9-bc94b51d5925",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/4a9cf064-f6a4-4ac0-bdf9-bc94b51d5925"
            },
            "attributes": {
                "title": "Briefing and Luncheon ",
                "description": null,
                "browser_url": "https://secure.emilyslist.org/page/contribute/NYC_Ignite_Change_Luncheon",
                "origin_system": "emilyslist:NYC_Ignite_Change_Luncheon",
                "featured_image_url": null,
                "start_date": "2017-09-18T00:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/4a9cf064-f6a4-4ac0-bdf9-bc94b51d5925/relationships/location",
                        "related": "http://localhost:3000/v1/events/4a9cf064-f6a4-4ac0-bdf9-bc94b51d5925/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/4a9cf064-f6a4-4ac0-bdf9-bc94b51d5925/relationships/user",
                        "related": "http://localhost:3000/v1/events/4a9cf064-f6a4-4ac0-bdf9-bc94b51d5925/user"
                    }
                }
            }
        },
        {
            "id": "2c2841e5-330a-4bf2-9a2b-63b62b3672d0",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/2c2841e5-330a-4bf2-9a2b-63b62b3672d0"
            },
            "attributes": {
                "title": "Luncheon",
                "description": null,
                "browser_url": "https://secure.emilyslist.org/page/contribute/western-regional-luncheon",
                "origin_system": "emilyslist:western-regional-luncheon",
                "featured_image_url": null,
                "start_date": "2017-10-13T00:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/2c2841e5-330a-4bf2-9a2b-63b62b3672d0/relationships/location",
                        "related": "http://localhost:3000/v1/events/2c2841e5-330a-4bf2-9a2b-63b62b3672d0/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/2c2841e5-330a-4bf2-9a2b-63b62b3672d0/relationships/user",
                        "related": "http://localhost:3000/v1/events/2c2841e5-330a-4bf2-9a2b-63b62b3672d0/user"
                    }
                }
            }
        },
        {
            "id": "7c2bfc80-030b-4864-83f2-3852209f7e0c",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/7c2bfc80-030b-4864-83f2-3852209f7e0c"
            },
            "attributes": {
                "title": "Night Out for Safety and Liberation",
                "description": null,
                "browser_url": "http://facebook.com/events/124363648167925",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-01T22:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/7c2bfc80-030b-4864-83f2-3852209f7e0c/relationships/location",
                        "related": "http://localhost:3000/v1/events/7c2bfc80-030b-4864-83f2-3852209f7e0c/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/7c2bfc80-030b-4864-83f2-3852209f7e0c/relationships/user",
                        "related": "http://localhost:3000/v1/events/7c2bfc80-030b-4864-83f2-3852209f7e0c/user"
                    }
                }
            }
        },
        {
            "id": "05166da1-d88a-4e28-844a-dad88716ee94",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/05166da1-d88a-4e28-844a-dad88716ee94"
            },
            "attributes": {
                "title": "D3 Monthly Meeting - August",
                "description": null,
                "browser_url": "http://facebook.com/events/808441485976208",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-02T00:30:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/05166da1-d88a-4e28-844a-dad88716ee94/relationships/location",
                        "related": "http://localhost:3000/v1/events/05166da1-d88a-4e28-844a-dad88716ee94/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/05166da1-d88a-4e28-844a-dad88716ee94/relationships/user",
                        "related": "http://localhost:3000/v1/events/05166da1-d88a-4e28-844a-dad88716ee94/user"
                    }
                }
            }
        },
        {
            "id": "9dd21b59-11ef-4626-8646-af7950b57e92",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/9dd21b59-11ef-4626-8646-af7950b57e92"
            },
            "attributes": {
                "title": "August 2017 Bay County Democratic Veterans Caucus",
                "description": null,
                "browser_url": "http://facebook.com/events/396096687404412",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-02T01:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/9dd21b59-11ef-4626-8646-af7950b57e92/relationships/location",
                        "related": "http://localhost:3000/v1/events/9dd21b59-11ef-4626-8646-af7950b57e92/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/9dd21b59-11ef-4626-8646-af7950b57e92/relationships/user",
                        "related": "http://localhost:3000/v1/events/9dd21b59-11ef-4626-8646-af7950b57e92/user"
                    }
                }
            }
        },
        {
            "id": "8d2ba324-5849-425a-8c03-540f26982881",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/8d2ba324-5849-425a-8c03-540f26982881"
            },
            "attributes": {
                "title": "LD 28 monthly meeting-AUGUST (no July meeting)",
                "description": null,
                "browser_url": "http://facebook.com/events/318853201874086",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-02T02:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/8d2ba324-5849-425a-8c03-540f26982881/relationships/location",
                        "related": "http://localhost:3000/v1/events/8d2ba324-5849-425a-8c03-540f26982881/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/8d2ba324-5849-425a-8c03-540f26982881/relationships/user",
                        "related": "http://localhost:3000/v1/events/8d2ba324-5849-425a-8c03-540f26982881/user"
                    }
                }
            }
        },
        {
            "id": "66a3e13d-f438-4b3d-a28e-0e960963101e",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/66a3e13d-f438-4b3d-a28e-0e960963101e"
            },
            "attributes": {
                "title": "Democracy Convention 2017",
                "description": null,
                "browser_url": "http://facebook.com/events/979847085463838",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-02T13:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/66a3e13d-f438-4b3d-a28e-0e960963101e/relationships/location",
                        "related": "http://localhost:3000/v1/events/66a3e13d-f438-4b3d-a28e-0e960963101e/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/66a3e13d-f438-4b3d-a28e-0e960963101e/relationships/user",
                        "related": "http://localhost:3000/v1/events/66a3e13d-f438-4b3d-a28e-0e960963101e/user"
                    }
                }
            }
        },
        {
            "id": "2f6f43ef-8b7b-4340-8953-afb6733cfb4b",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/2f6f43ef-8b7b-4340-8953-afb6733cfb4b"
            },
            "attributes": {
                "title": "Philly - Gerrymandering: Film and Discussion",
                "description": null,
                "browser_url": "http://facebook.com/events/743518679189815",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-02T22:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/2f6f43ef-8b7b-4340-8953-afb6733cfb4b/relationships/location",
                        "related": "http://localhost:3000/v1/events/2f6f43ef-8b7b-4340-8953-afb6733cfb4b/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/2f6f43ef-8b7b-4340-8953-afb6733cfb4b/relationships/user",
                        "related": "http://localhost:3000/v1/events/2f6f43ef-8b7b-4340-8953-afb6733cfb4b/user"
                    }
                }
            }
        },
        {
            "id": "91d671d6-cb8e-4597-a525-ece68deed075",
            "type": "events",
            "links": {
                "self": "http://localhost:3000/v1/events/91d671d6-cb8e-4597-a525-ece68deed075"
            },
            "attributes": {
                "title": "Building Empathy and Addressing Racial Oppression (Session 2)",
                "description": null,
                "browser_url": "http://facebook.com/events/1426807630717923",
                "origin_system": "Facebook",
                "featured_image_url": null,
                "start_date": "2017-08-02T22:30:00.000Z",
                "end_date": null,
                "free": false,
                "identifier": null,
                "identifiers": []
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/91d671d6-cb8e-4597-a525-ece68deed075/relationships/location",
                        "related": "http://localhost:3000/v1/events/91d671d6-cb8e-4597-a525-ece68deed075/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "http://localhost:3000/v1/events/91d671d6-cb8e-4597-a525-ece68deed075/relationships/user",
                        "related": "http://localhost:3000/v1/events/91d671d6-cb8e-4597-a525-ece68deed075/user"
                    }
                }
            }
        }
    ],
    "links": {
        "first": "http://localhost:3000/v1/events?page%5Bnumber%5D=1&page%5Bsize%5D=10",
        "next": "http://localhost:3000/v1/events?page%5Bnumber%5D=2&page%5Bsize%5D=10",
        "last": "http://localhost:3000/v1/events?page%5Bnumber%5D=3&page%5Bsize%5D=10"
    }
}
```

This endpoint retrieves all events.

### HTTP Request

`GET http://localhost:3000/v1/events`

### Filter

You can filter based on the following attribteus

Filter 		| Values | Description|  Example
--------- |  ----------- |  ----------- |  -----------
upcoming     | true, false |  filter by events in the future | `GET "http://localhost:3000/v1/events?filter[upcoming]=true"`
free     | true, false |  filter by free events | `GET "http://localhost:3000/v1/events?filter[free]=true"`


## Get a Specific Event


```shell
curl -X GET  "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "b22dec03-2542-41da-a412-2642b76895ce",
        "type": "events",
        "links": {
            "self": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce"
        },
        "attributes": {
            "title": "Reception",
            "description": null,
            "browser_url": "https://secure.emilyslist.org/page/contribute/Events_Test",
            "origin_system": "emilyslist:Events_Test",
            "featured_image_url": null,
            "start_date": "2017-07-27T00:00:00.000Z",
            "end_date": null,
            "free": false,
            "identifier": null,
            "identifiers": []
        },
        "relationships": {
            "location": {
                "links": {
                    "self": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/relationships/location",
                    "related": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/location"
                }
            },
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/relationships/user",
                    "related": "http://localhost:3000/v1/events/b22dec03-2542-41da-a412-2642b76895ce/user"
                }
            }
        }
    }
}
```

### HTTP Request

`GET "http://localhost:3000/v1/events/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the event to retrieve


## Create an Event

```shell
{
    "data": {
        "type": "events",
        "attributes": {
            "title": "Sitin at city hall",
            "description": null,
            "browser_url": "https://secure.emilyslist.org/page/contribute/cityhallsitin",
            "origin_system": "emilyslist",
            "featured_image_url": null,
            "start_date": "2017-07-27T00:00:00.000Z",
            "end_date": null,
            "free": false,
            "identifier": null,
            "identifiers": ["emilyslist:cityhallsitin"]
        },
        "relationships": {
            "location": {
                "data": {
                    "type": "locations",
                    "id": "cf2e490a-7bed-46d5-8e0a-386dfb365cc8"
                }
            }
        }
    }
}
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "6ef4013f-e016-4ca0-bb28-d2d3e39286d6",
        "type": "events",
        "links": {
            "self": "http://localhost:3000/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6"
        },
        "attributes": {
            "title": "Sit in at city hall",
            "description": null,
            "browser_url": "https://secure.emilyslist.org/page/contribute/cityhallsitin",
            "origin_system": "emilyslist:cityhallsitin",
            "featured_image_url": null,
            "start_date": "2017-07-27T00:00:00.000Z",
            "end_date": null,
            "free": false,
            "identifier": null,
            "identifiers": ["emilyslist:cityhallsitin"]
        },
        "relationships": {
            "location": {
                "links": {
                    "self": "http://localhost:3000/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/relationships/location",
                    "related": "http://localhost:3000/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/location"
                }
            },
            "user": {
                "links": {
                    "self": "http://localhost:3000/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/relationships/user",
                    "related": "http://localhost:3000/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/user"
                }
            }
        }
    }
}
```

This endpoint creates a new event.

### HTTP Request

`POST "http://localhost:3000/v1/events/`


