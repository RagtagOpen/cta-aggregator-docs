# Events

## Get All Events

```shell
curl -X GET "http://localhost:3000/v1/events"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json

```

This endpoint retrieves all events.

### HTTP Request

`GET http://localhost:3000/events`

### Filter

You can filter based on the following attribteus

Filter 		| Values | Description|  Example
--------- |  ----------- |  ----------- |  -----------
upcoming     | true |  filter by events in the future | `GET "http://localhost:3000/events?filter[upcoming]=true"` 
event type     | onsite, phone |  filter by events type | `GET "http://localhost:3000/events?filter[event_type]=onsite"` 


## Get a Specific Event


```shell curl -X GET  "http://localhost:3000/v1/event/83911d17-b56e-4c11-bc5b-485c8cba8513"
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

`GET "http://localhost:3000/events/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the event to retrieve


## Create an Event

```shell
curl -X POST
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
  "http://localhost:3000/v1/events"
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

`POST "http://localhost:3000/events/`


## Add a Contact to an Event

```shell
curl -X PUT 
  -H "Content-Type: application/vnd.api+json" 
	-H "Accept: application/vnd.api+json" 
	-d '{
  "data": {
    "id": "9efce530-4e6d-458c-93ad-22e42c3c8aa5",
    "type": "contacts"
    }
	}'
 	"http://localhost:3000/events/25c96b80-6dbe-4dda-85a6-d760aa82f5a9/relationships/contacts"
```

> The above command returns JSON structured like this:

```json
status: 204
```

This endpoint allows you to add a contact to an event.

### HTTP Request

`PUT http://localhost:3000/events/<UUID>/relationships/contacts`


## Add a Location to an Event

```shell
curl -X PUT 
  -H "Content-Type: application/vnd.api+json" 
	-H "Accept: application/vnd.api+json" 
	-d '{
  "data": {
    "id": "9efce530-4e6d-458c-93ad-22e42c3c8aa5",
    "type": "locations"
    }
	}'
 	"http://localhost:3000/events/31a22b00-8e7d-4194-b260-162439f56dba/relationships/location"
```

> The above command returns JSON structured like this:

```json
status: 204
```

This endpoint allows you to add a location to an event.

### HTTP Request

`PUT http://localhost:3000/events/<UUID>/relationships/location`
