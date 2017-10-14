# Events

An Event Resource is a top-level resource that represents a call to action that has a location.

It contains the following attributes.

Name               | Type        | Description
---------          | ----------- | -----------
identifiers        | array       | A unique string array of identifiers in the format [system name]:[id].
start_date         | datetime    | The start time for the event.
end_date           | datetime    | date  The date for all day events.
created_at         | datetime    | A read-only property representing the date and time the resource was created on the local system.
updated_at         | datetime    | A read-only property representing the date and time the resource was last modified on the local system.
title              | string      | The title of the event. Intended for public display rather than administrative purposes.
description        | string      | description of the event, usually displayed publicly. May contain text and/or HTML.
browser_url        | string      | A URL string pointing to the publicly available event page on the web.
origin_system      | string      | A human readable identifier of the system where this event was created. (ex: “OSDI System”)
featured_image_url | string      | A URL string pointing to a publicly available featured image file for this event on the web.
free               | boolean     | Indicator of whether there is a cost associated with attending the event
location_id        | integer     | Identifier for location associated with event

For more information on OSDI's Event resource, follow this link:
[https://opensupporter.github.io/osdi-docs/events.html](https://opensupporter.github.io/osdi-docs/events).

## Get All Future Events

```shell
curl -X GET "https://www.resistr.tech/v1/events"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

```ruby
require 'cta_aggregator_client'
# Configure gem (for directions, see gem's README)

response = CTAAggregatorClient::Event.list
JSON.parse(response.body)
```

> The above command returns JSON structured like this:

```json
{
    "data": [
        {
            "id": "d9aa62d4-3d06-46d4-b855-d0a200b420ad",
            "type": "events",
            "links": {
                "self": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad"
            },
            "attributes": {
                "title": "Join EMILY's List President Stephanie Schriock for a special reception in Santa Fe!",
                "description": null,
                "browser_url": "https://secure.emilyslist.org/page/contribute/Events_Test",
                "origin_system": "Emily's List",
                "featured_image_url": null,
                "start_date": "2017-07-27T05:30:00.000Z",
                "end_date": null,
                "free": false,
                "identifiers": [
                    "emilys-list:Events_Test",
                    "cta-aggregator:d9aa62d4-3d06-46d4-b855-d0a200b420ad"
                ]
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/relationships/location",
                        "related": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/relationships/user",
                        "related": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/user"
                    }
                }
            }
        },
        {
            "id": "3b511fd6-3057-46a0-9bac-e6c1633019ba",
            "type": "events",
            "links": {
                "self": "https://www.resistr.tech/v1/events/3b511fd6-3057-46a0-9bac-e6c1633019ba"
            },
            "attributes": {
                "title": "Join EMILY's List President Stephanie Schriock and featured speakers Senator Kirsten Gillibrand and Rep. Jacky Rosen at our Ignite Change Luncheon in New York!",
                "description": null,
                "browser_url": "https://secure.emilyslist.org/page/contribute/NYC_Ignite_Change_Luncheon",
                "origin_system": "Emily's List",
                "featured_image_url": null,
                "start_date": "2017-09-18T12:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifiers": [
                    "emilys-list:NYC_Ignite_Change_Luncheon",
                    "cta-aggregator:3b511fd6-3057-46a0-9bac-e6c1633019ba"
                ]
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "https://www.resistr.tech/v1/events/3b511fd6-3057-46a0-9bac-e6c1633019ba/relationships/location",
                        "related": "https://www.resistr.tech/v1/events/3b511fd6-3057-46a0-9bac-e6c1633019ba/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "https://www.resistr.tech/v1/events/3b511fd6-3057-46a0-9bac-e6c1633019ba/relationships/user",
                        "related": "https://www.resistr.tech/v1/events/3b511fd6-3057-46a0-9bac-e6c1633019ba/user"
                    }
                }
            }
        },
        {
            "id": "b0e86149-c781-417e-a96f-1a57c3ed863b",
            "type": "events",
            "links": {
                "self": "https://www.resistr.tech/v1/events/b0e86149-c781-417e-a96f-1a57c3ed863b"
            },
            "attributes": {
                "title": "Join EMILY's List President Stephanie Schriock and special guest Congresswoman Jacky Rosen at our 2017 Ignite Change Luncheon in San Francisco!",
                "description": null,
                "browser_url": "https://secure.emilyslist.org/page/contribute/western-regional-luncheon",
                "origin_system": "Emily's List",
                "featured_image_url": null,
                "start_date": "2017-10-13T11:00:00.000Z",
                "end_date": null,
                "free": false,
                "identifiers": [
                    "emilys-list:western-regional-luncheon",
                    "cta-aggregator:b0e86149-c781-417e-a96f-1a57c3ed863b"
                ]
            },
            "relationships": {
                "location": {
                    "links": {
                        "self": "https://www.resistr.tech/v1/events/b0e86149-c781-417e-a96f-1a57c3ed863b/relationships/location",
                        "related": "https://www.resistr.tech/v1/events/b0e86149-c781-417e-a96f-1a57c3ed863b/location"
                    }
                },
                "user": {
                    "links": {
                        "self": "https://www.resistr.tech/v1/events/b0e86149-c781-417e-a96f-1a57c3ed863b/relationships/user",
                        "related": "https://www.resistr.tech/v1/events/b0e86149-c781-417e-a96f-1a57c3ed863b/user"
                    }
                }
            }
        }
    ],
    "links": {
        "first": "https://www.resistr.tech/v1/events?page%5Bnumber%5D=1&page%5Bsize%5D=10",
        "last": "https://www.resistr.tech/v1/events?page%5Bnumber%5D=1&page%5Bsize%5D=10"
    }
}
```

This endpoint retrieves all future events.

### HTTP Request

`GET https://www.resistr.tech/v1/events`

### Filter

You can filter based on the following attribteus

Filter    | Values      | Description                  | Example
--------- | ----------- | -----------                  | -----------
past      | true        | filter by events in the past | `GET "https://www.resistr.tech/v1/events?filter[past]=true"`
free      | true, false | filter by free events        | `GET "https://www.resistr.tech/v1/events?filter[free]=true"`


## Get a Specific Event


```shell
curl -X GET  "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

```ruby
require 'cta_aggregator_client'
# Configure gem (for directions, see gem's README)

uuid = 'd9aa62d4-3d06-46d4-b855-d0a200b420ad'
response = CTAAggregatorClient::Event.find(uuid)
JSON.parse(response.body)
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "d9aa62d4-3d06-46d4-b855-d0a200b420ad",
        "type": "events",
        "links": {
            "self": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad"
        },
        "attributes": {
            "title": "Join EMILY's List President Stephanie Schriock for a special reception in Santa Fe!",
            "description": null,
            "browser_url": "https://secure.emilyslist.org/page/contribute/Events_Test",
            "origin_system": "Emily's List",
            "featured_image_url": null,
            "start_date": "2017-07-27T05:30:00.000Z",
            "end_date": null,
            "free": false,
            "identifiers": [
                "emilys-list:Events_Test",
                "cta-aggregator:d9aa62d4-3d06-46d4-b855-d0a200b420ad"
            ]
        },
        "relationships": {
            "location": {
                "links": {
                    "self": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/relationships/location",
                    "related": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/location"
                }
            },
            "user": {
                "links": {
                    "self": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/relationships/user",
                    "related": "https://www.resistr.tech/v1/events/d9aa62d4-3d06-46d4-b855-d0a200b420ad/user"
                }
            }
        }
    }
}
```

This endpoint retrieves a specific event.

### HTTP Request

`GET "https://www.resistr.tech/v1/events/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID        | The ID of the event to retrieve


## Create an Event

```shell
curl -X POST "https://www.resistr.tech/v1/events"
  -H "Content-Type: application/vnd.api+json"
  -H "Accept: application/vnd.api+json"
  -H "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJleHAiOjE1MDI2NjMwMjEsInN1YiI6ImI0ZDQ5MDAzLWEyMWYtNGVjZi1hYjM3LTQzMmRkMWM4MzE4MiJ9.Q_QeKrpgvelRZ-XB8gM1B1SSrjeGVEK93HLW2p4SoFJv5zICQV6aFiKyA1lJ8qhrPBzqIPtTgqQBTN9ng0c0PA"
  -d ' {
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
} '
```

```ruby
require 'cta_aggregator_client'
# Configure gem (for directions, see gem's README)

event_attrs = {
  title: 'March on Washington',
  description: 'Illum molestiae aut ullam non qui consequatur magni.',
  browser_url: 'http://example.com/marge',
  origin_system: '5Calls',
  featured_image_url: 'http://lorempixel.com/300/300',
  start_date: '2017-07-08T03:58:25.098Z',
  end_date: '2017-07-13T03:58:25.098Z',
  free: false,
  location: '215ed993-3cd1-4fbc-b8af-7e2082813d06'
}

CTAAggregatorClient::Event.create(event_attrs)
```

> The above command returns JSON structured like this:

```json
{
    "data": {
        "id": "6ef4013f-e016-4ca0-bb28-d2d3e39286d6",
        "type": "events",
        "links": {
            "self": "https://www.resistr.tech/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6"
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
            "identifiers": ["emilyslist:cityhallsitin", "cta-aggregator:6ef4013f-e016-4ca0-bb28-d2d3e39286d6" ]
        },
        "relationships": {
            "location": {
                "links": {
                    "self": "https://www.resistr.tech/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/relationships/location",
                    "related": "https://www.resistr.tech/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/location"
                }
            },
            "user": {
                "links": {
                    "self": "https://www.resistr.tech/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/relationships/user",
                    "related": "https://www.resistr.tech/v1/events/6ef4013f-e016-4ca0-bb28-d2d3e39286d6/user"
                }
            }
        }
    }
}
```

This endpoint creates a new event.

### HTTP Request

`POST "https://www.resistr.tech/v1/events/"`

Requests to create a resource must include a valid JWT token. This token can be obtained from the `authentication` endpoint.

