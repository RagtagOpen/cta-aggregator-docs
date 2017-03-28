# Events

Every call to action is represented in the API as an event.  Events have related resources such as a contact or a location.

###  Event Attributes

Attribute 	| Data Type | Meaning
----------  | -------   | -------
id          | uuid      | unique identifier
title       | string    | name of the event
description | string    | breif summary of the event
free        | boolean   | whether there's a cost for the event
start-time  | integer   | event start time expressed in epoch time
ent-time    | integer   | event end time expressed in epoch time
event-type  | string    | options are "onsite" or "phone"
website     | string    | site where the CTA originated

If you're looking for the contact or location for an event, you'll find it in the `relationship` hash when request an event from the API.

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
      "id": "a94af705-c389-4c33-8b25-e35a42062949",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/a94af705-c389-4c33-8b25-e35a42062949"
      },
      "attributes": {
        "title": "occaecat sed nulla ea consectetur",
        "description": "magna adipiscing id aute consectetur ut incididunt mollit non Duis dolore elit reprehenderit laboris sed dolore Excepteur ut est nostrud officia deserunt ipsum sunt culpa",
        "free": false,
        "start-time": 1526236740,
        "end-time": 1526247540,
        "event-type": "onsite",
        "website": "www.consectetur.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/a94af705-c389-4c33-8b25-e35a42062949/relationships/location",
            "related": "http://localhost:3000/v1/events/a94af705-c389-4c33-8b25-e35a42062949/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/a94af705-c389-4c33-8b25-e35a42062949/relationships/contact",
            "related": "http://localhost:3000/v1/events/a94af705-c389-4c33-8b25-e35a42062949/contact"
          }
        }
      }
    },
    {
      "id": "5ddc36fd-ccd8-41e4-a454-c1b008e264a7",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/5ddc36fd-ccd8-41e4-a454-c1b008e264a7"
      },
      "attributes": {
        "title": "pariatur non amet dolor sunt",
        "description": "Excepteur est ea elit in minim dolor incididunt occaecat amet in fugiat ullamco sunt Duis sint sit anim reprehenderit id eu consequat nulla ut laborum",
        "free": false,
        "start-time": 1507813620,
        "end-time": 1507824420,
        "event-type": "onsite",
        "website": "www.non.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/5ddc36fd-ccd8-41e4-a454-c1b008e264a7/relationships/location",
            "related": "http://localhost:3000/v1/events/5ddc36fd-ccd8-41e4-a454-c1b008e264a7/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/5ddc36fd-ccd8-41e4-a454-c1b008e264a7/relationships/contact",
            "related": "http://localhost:3000/v1/events/5ddc36fd-ccd8-41e4-a454-c1b008e264a7/contact"
          }
        }
      }
    },
    {
      "id": "3b2aa5cc-430d-42ec-9a3f-ddac99957584",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/3b2aa5cc-430d-42ec-9a3f-ddac99957584"
      },
      "attributes": {
        "title": "ex cillum ut quis pariatur",
        "description": "sit aliqua reprehenderit amet sed ut enim occaecat adipiscing aute aliquip minim deserunt et officia quis eu proident ut nulla fugiat eiusmod in do qui",
        "free": false,
        "start-time": 1498284480,
        "end-time": 1498295280,
        "event-type": "onsite",
        "website": "www.pariatur.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/3b2aa5cc-430d-42ec-9a3f-ddac99957584/relationships/location",
            "related": "http://localhost:3000/v1/events/3b2aa5cc-430d-42ec-9a3f-ddac99957584/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/3b2aa5cc-430d-42ec-9a3f-ddac99957584/relationships/contact",
            "related": "http://localhost:3000/v1/events/3b2aa5cc-430d-42ec-9a3f-ddac99957584/contact"
          }
        }
      }
    },
    {
      "id": "79eb5360-ad92-4fcd-96f8-7b64a8ec16a1",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/79eb5360-ad92-4fcd-96f8-7b64a8ec16a1"
      },
      "attributes": {
        "title": "deserunt sint labore dolore in",
        "description": "do Ut occaecat sint dolore sed minim nisi amet pariatur aliqua elit commodo dolor ea ullamco dolor labore irure adipiscing qui Duis aute deserunt nulla",
        "free": false,
        "start-time": 1555809000,
        "end-time": 1555823400,
        "event-type": "onsite",
        "website": "www.aute.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/79eb5360-ad92-4fcd-96f8-7b64a8ec16a1/relationships/location",
            "related": "http://localhost:3000/v1/events/79eb5360-ad92-4fcd-96f8-7b64a8ec16a1/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/79eb5360-ad92-4fcd-96f8-7b64a8ec16a1/relationships/contact",
            "related": "http://localhost:3000/v1/events/79eb5360-ad92-4fcd-96f8-7b64a8ec16a1/contact"
          }
        }
      }
    },
    {
      "id": "5d28b127-d7ff-4ef0-9215-b1029f4eefb0",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/5d28b127-d7ff-4ef0-9215-b1029f4eefb0"
      },
      "attributes": {
        "title": "consectetur do velit sed anim",
        "description": "exercitation laboris in nulla Duis eu nisi ex in consequat quis proident ut anim dolor culpa est dolore aliquip ad magna in esse do ea",
        "free": true,
        "start-time": 1576524120,
        "end-time": 1576527720,
        "event-type": "onsite",
        "website": "www.sit.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/5d28b127-d7ff-4ef0-9215-b1029f4eefb0/relationships/location",
            "related": "http://localhost:3000/v1/events/5d28b127-d7ff-4ef0-9215-b1029f4eefb0/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/5d28b127-d7ff-4ef0-9215-b1029f4eefb0/relationships/contact",
            "related": "http://localhost:3000/v1/events/5d28b127-d7ff-4ef0-9215-b1029f4eefb0/contact"
          }
        }
      }
    },
    {
      "id": "8ec14d5b-1565-43a9-bbbb-fa66a8f1b875",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/8ec14d5b-1565-43a9-bbbb-fa66a8f1b875"
      },
      "attributes": {
        "title": "incididunt in officia dolor laborum",
        "description": "quis cillum ipsum eu dolor esse pariatur Excepteur in aliquip sint anim officia do cupidatat sunt sit dolore in incididunt laboris ut magna veniam ut",
        "free": true,
        "start-time": 1509701760,
        "end-time": 1509705360,
        "event-type": "onsite",
        "website": "www.adipiscing.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/8ec14d5b-1565-43a9-bbbb-fa66a8f1b875/relationships/location",
            "related": "http://localhost:3000/v1/events/8ec14d5b-1565-43a9-bbbb-fa66a8f1b875/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/8ec14d5b-1565-43a9-bbbb-fa66a8f1b875/relationships/contact",
            "related": "http://localhost:3000/v1/events/8ec14d5b-1565-43a9-bbbb-fa66a8f1b875/contact"
          }
        }
      }
    },
    {
      "id": "5ccd793f-02df-4fee-8ab6-d2f87fcda52e",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/5ccd793f-02df-4fee-8ab6-d2f87fcda52e"
      },
      "attributes": {
        "title": "occaecat nostrud exercitation eiusmod aute",
        "description": "cillum consequat nisi dolor labore deserunt Excepteur ullamco proident laboris ut aliqua in Duis cupidatat enim ad sed qui occaecat minim reprehenderit fugiat exercitation dolore",
        "free": false,
        "start-time": 1534443720,
        "end-time": 1534450920,
        "event-type": "onsite",
        "website": "www.non.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/5ccd793f-02df-4fee-8ab6-d2f87fcda52e/relationships/location",
            "related": "http://localhost:3000/v1/events/5ccd793f-02df-4fee-8ab6-d2f87fcda52e/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/5ccd793f-02df-4fee-8ab6-d2f87fcda52e/relationships/contact",
            "related": "http://localhost:3000/v1/events/5ccd793f-02df-4fee-8ab6-d2f87fcda52e/contact"
          }
        }
      }
    },
    {
      "id": "ee626b19-351d-4948-a21f-61682bc4c047",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/ee626b19-351d-4948-a21f-61682bc4c047"
      },
      "attributes": {
        "title": "magna Duis officia sed dolore",
        "description": "qui ipsum Ut aliqua labore consectetur exercitation id veniam anim quis mollit do amet aute sit fugiat eu commodo dolore in ut est irure tempor",
        "free": true,
        "start-time": 1536480180,
        "end-time": 1536494580,
        "event-type": "onsite",
        "website": "www.nostrud.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/ee626b19-351d-4948-a21f-61682bc4c047/relationships/location",
            "related": "http://localhost:3000/v1/events/ee626b19-351d-4948-a21f-61682bc4c047/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/ee626b19-351d-4948-a21f-61682bc4c047/relationships/contact",
            "related": "http://localhost:3000/v1/events/ee626b19-351d-4948-a21f-61682bc4c047/contact"
          }
        }
      }
    },
    {
      "id": "e91a408f-6b84-4a7c-a3f9-f527fe030e9a",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/e91a408f-6b84-4a7c-a3f9-f527fe030e9a"
      },
      "attributes": {
        "title": "tempor in nisi in enim",
        "description": "pariatur magna aliquip et veniam cillum nisi adipiscing mollit ut anim commodo ex in reprehenderit esse sit quis occaecat Lorem exercitation Excepteur irure ullamco nulla",
        "free": true,
        "start-time": 1553486640,
        "end-time": 1553497440,
        "event-type": "onsite",
        "website": "www.laboris.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/e91a408f-6b84-4a7c-a3f9-f527fe030e9a/relationships/location",
            "related": "http://localhost:3000/v1/events/e91a408f-6b84-4a7c-a3f9-f527fe030e9a/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/e91a408f-6b84-4a7c-a3f9-f527fe030e9a/relationships/contact",
            "related": "http://localhost:3000/v1/events/e91a408f-6b84-4a7c-a3f9-f527fe030e9a/contact"
          }
        }
      }
    },
    {
      "id": "8319d43b-e8ca-4b15-b6a8-fa475089a790",
      "type": "events",
      "links": {
        "self": "http://localhost:3000/v1/events/8319d43b-e8ca-4b15-b6a8-fa475089a790"
      },
      "attributes": {
        "title": "esse elit cillum consectetur do",
        "description": "sint dolore id sunt officia labore nulla et dolor exercitation ipsum Ut ex enim nisi non commodo ut tempor in elit aute dolor nostrud cupidatat",
        "free": false,
        "start-time": 1519024680,
        "end-time": 1519028280,
        "event-type": "onsite",
        "website": "www.dolore.com"
      },
      "relationships": {
        "location": {
          "links": {
            "self": "http://localhost:3000/v1/events/8319d43b-e8ca-4b15-b6a8-fa475089a790/relationships/location",
            "related": "http://localhost:3000/v1/events/8319d43b-e8ca-4b15-b6a8-fa475089a790/location"
          }
        },
        "contact": {
          "links": {
            "self": "http://localhost:3000/v1/events/8319d43b-e8ca-4b15-b6a8-fa475089a790/relationships/contact",
            "related": "http://localhost:3000/v1/events/8319d43b-e8ca-4b15-b6a8-fa475089a790/contact"
          }
        }
      }
    }
  ],
  "links": {
    "first": "http://localhost:3000/v1/events?page%5Bnumber%5D=1&page%5Bsize%5D=10",
    "next": "http://localhost:3000/v1/events?page%5Bnumber%5D=2&page%5Bsize%5D=10",
    "last": "http://localhost:3000/v1/events?page%5Bnumber%5D=6&page%5Bsize%5D=10"
  }
}
```

This endpoint retrieves all events.

### HTTP Request

`GET http://localhost:3000/v1/events`

### Filter

You can filter based on the following attribteus

Filter    | Values        | Description           |  Example
--------- | ---------     | -----------           |  -------
upcoming  | true          |  events in the future | `GET "http://localhost:3000/v1/events?filter[upcoming]=true"`
event type| onsite, phone |  event type           | `GET "http://localhost:3000/v1/events?filter[event_type]=onsite"`


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
    "id": "31a22b00-8e7d-4194-b260-162439f56dba",
    "type": "events",
    "links": {
      "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba"
    },
    "attributes": {
      "title": "pizza pizza pizza",
      "description": "desc",
      "free": true,
      "start-time": 1526725814,
      "end-time": 1526740214,
      "event-type": "onsite",
      "website": "www.example.com"
    },
    "relationships": {
      "location": {
        "links": {
          "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/location",
          "related": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/location"
        }
      },
      "contact": {
        "links": {
          "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/contact",
          "related": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/contact"
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


## Create an Event with Relationships

```shell
curl -X POST "http://localhost:3000/v1/events"
  -H "Accept: application/vnd.api+json" 
  -H "Content-Type: application/vnd.api+json" 
  -d ' {
    "data": {
      "type": "events",
        "attributes": {
          "title": "pizza pizza pizza",
          "description": "desc",
          "free": true,
          "website": "www.example.com",
          "event-type": "onsite",
          "start-time": "1526725814",
          "end-time": "1526740214"  
        },
    		"relationships": {
    		  "location": {
               "data": { "type": "locations", "id": "657a33f9-6139-45a8-becd-f581809a8b05" }
            },
    		  "contact": {
               "data": { "type": "contacts", "id": "368f52df-395f-4ad7-8ee2-50921d74dae1" }
            }            
        }
    }
  }'
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "31a22b00-8e7d-4194-b260-162439f56dba",
    "type": "events",
    "links": {
      "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba"
    },
    "attributes": {
      "title": "pizza pizza pizza",
      "description": "desc",
      "free": true,
      "start-time": 1526725814,
      "end-time": 1526740214,
      "event-type": "onsite",
      "website": "www.example.com"
    },
    "relationships": {
      "location": {
        "links": {
          "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/location",
          "related": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/location"
        }
      },
      "contact": {
        "links": {
          "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/contact",
          "related": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/contact"
        }
 			}
    }
  }
}
```

The payload for a POST request to the `events` endpoint can specify how an event is related to other records (location and/or contact).  To do this, add a `relationships` hash that contains the ids of each related resource.

<aside class="warning">
Note: You cannot create your event and it's related records simulatanesouly.
You need to find or create the related record first and then pass along its id when creating the event.
</aside>

Alternatively, you can create an event record, then add a location and a contact to it. The next section contains examples of how ot do that.

### HTTP Request

`POST "http://localhost:3000/v1/events/`

## Create an Event

```shell
curl -X POST "http://localhost:3000/v1/events"
  -H "Accept: application/vnd.api+json" 
  -H "Content-Type: application/vnd.api+json" 
  -d ' {
    "data": {
      "type": "events",
        "attributes": {
          "title": "pizza pizza pizza",
          "description": "desc",
          "free": true,
          "website": "www.example.com",
          "event-type": "onsite",
          "start-time": "1526725814",
          "end-time": "1526740214"  
        }
    }
  }'
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "31a22b00-8e7d-4194-b260-162439f56dba",
    "type": "events",
    "links": {
      "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba"
    },
    "attributes": {
      "title": "pizza pizza pizza",
      "description": "desc",
      "free": true,
      "start-time": 1526725814,
      "end-time": 1526740214,
      "event-type": "onsite",
      "website": "www.example.com"
    },
    "relationships": {
      "location": {
        "links": {
          "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/location",
          "related": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/location"
        }
      },
      "contact": {
        "links": {
          "self": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/contact",
          "related": "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/contact"
        }
 			}
    }
  }
}
```

This endpoint creates a new event.

### HTTP Request

`POST "http://localhost:3000/v1/events/`


## Add a Contact to an Event

```shell
curl -X PUT "http://localhost:3000/v1/events/25c96b80-6dbe-4dda-85a6-d760aa82f5a9/relationships/contacts"
  -H "Content-Type: application/vnd.api+json" 
	-H "Accept: application/vnd.api+json" 
	-d '{
    "data": {
      "id": "9efce530-4e6d-458c-93ad-22e42c3c8aa5",
      "type": "contacts"
    }
  }'
```

> The above command returns this HTTP status:

```json
status: 204
```

This endpoint allows you to add a contact to an event.

### HTTP Request

`PUT http://localhost:3000/v1/events/<UUID>/relationships/contacts`


## Add a Location to an Event

```shell
curl -X PUT "http://localhost:3000/v1/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/location"
  -H "Content-Type: application/vnd.api+json" 
	-H "Accept: application/vnd.api+json" 
	-d '{
    "data": {
      "id": "9efce530-4e6d-458c-93ad-22e42c3c8aa5",
      "type": "locations"
    }
  }'
```

> The above command returns this HTTP status:

```json
status: 204
```

This endpoint allows you to add a location to an event.

### HTTP Request

`PUT http://localhost:3000/v1/events/<UUID>/relationships/location`
