# Locations

All onsite events have a location associated with them.

###  Location Attributes

Attribute 	| Data Type | Meaning
----------  | -------   | -------
id          | uuid      | unique identifier
address     | string    | full address
city        | string    | city name
state       | string    | 2 letter state abbreviation
zipcode     | string    | postal code
notes       | text      | Additional information

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
      "id": "56ee1a5e-90a1-4c03-a0fd-d025e4b9538d",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/56ee1a5e-90a1-4c03-a0fd-d025e4b9538d"
      },
      "attributes": {
        "address-line-1": "210 E. 249 St.",
        "address-line-2": "",
        "city": "New York",
        "state": "TX",
        "zipcode": "52569",
        "notes": null
      }
    },
    {
      "id": "dc1d144a-054c-4a87-8b1b-d984efd8c394",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/dc1d144a-054c-4a87-8b1b-d984efd8c394"
      },
      "attributes": {
        "address-line-1": "36 N. 100 Ave.",
        "address-line-2": "Suite 2311",
        "city": "Baltimore",
        "state": "NY",
        "zipcode": "18400",
        "notes": null
      }
    },
    {
      "id": "3cf1e2c9-0b21-4eee-ab3e-25ea77b83db3",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/3cf1e2c9-0b21-4eee-ab3e-25ea77b83db3"
      },
      "attributes": {
        "address-line-1": "169 S. 142 Ave.",
        "address-line-2": "Suite 2793",
        "city": "Bannock",
        "state": "WA",
        "zipcode": "19076",
        "notes": null
      }
    },
    {
      "id": "964500a4-6d11-4f62-be8c-fdd556293848",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/964500a4-6d11-4f62-be8c-fdd556293848"
      },
      "attributes": {
        "address-line-1": "239 N. 69 Blvd.",
        "address-line-2": "",
        "city": "Bannock",
        "state": "ID",
        "zipcode": "78290",
        "notes": null
      }
    },
    {
      "id": "91369577-323d-4c9a-b735-bb46bd60b76d",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/91369577-323d-4c9a-b735-bb46bd60b76d"
      },
      "attributes": {
        "address-line-1": "168 E. 178 Blvd.",
        "address-line-2": "",
        "city": "Dallas",
        "state": "ID",
        "zipcode": "44153",
        "notes": null
      }
    },
    {
      "id": "47237bc6-e028-44ec-ac42-1dcbfe953f4f",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/47237bc6-e028-44ec-ac42-1dcbfe953f4f"
      },
      "attributes": {
        "address-line-1": "84 W. 242 Blvd.",
        "address-line-2": "Suite 1955",
        "city": "Baltimore",
        "state": "TX",
        "zipcode": "51990",
        "notes": null
      }
    },
    {
      "id": "d96721d5-ef23-4fac-95bb-5dab2412ed41",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/d96721d5-ef23-4fac-95bb-5dab2412ed41"
      },
      "attributes": {
        "address-line-1": "174 S. 205 St.",
        "address-line-2": "Suite 82",
        "city": "San Francisco",
        "state": "WA",
        "zipcode": "27006",
        "notes": null
      }
    },
    {
      "id": "0940c205-9962-45b3-b11b-52ed7b798143",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/0940c205-9962-45b3-b11b-52ed7b798143"
      },
      "attributes": {
        "address-line-1": "197 S. 99 Blvd.",
        "address-line-2": "",
        "city": "San Francisco",
        "state": "CA",
        "zipcode": "98345",
        "notes": null
      }
    },
    {
      "id": "95d916ca-e59b-46cc-ab1a-eac9a9b24768",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/95d916ca-e59b-46cc-ab1a-eac9a9b24768"
      },
      "attributes": {
        "address-line-1": "113 N. 234 Ave.",
        "address-line-2": "",
        "city": "Los Angeles",
        "state": "TX",
        "zipcode": "15656",
        "notes": null
      }
    },
    {
      "id": "fa6d4802-937c-4e27-a938-1450083aebae",
      "type": "locations",
      "links": {
        "self": "http://localhost:3000/v1/locations/fa6d4802-937c-4e27-a938-1450083aebae"
      },
      "attributes": {
        "address-line-1": "146 N. 246 Ave.",
        "address-line-2": "",
        "city": "Spokane",
        "state": "ID",
        "zipcode": "44766",
        "notes": null
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

You can filter based on the following attribteus

Filter    | Example
--------- |  -----------
address_line_1    | `GET "http://localhost:3000/v1/locations?filter[address_line_1]=123 Fake St."`
city | `GET "http://localhost:3000/v1/locations?filter[city]=Detroit"`
state | `GET "http://localhost:3000/v1/locations?filter[state]=ID"`
zipcode | `GET "http://localhost:3000/v1/locations?filter[zipcode]=66001"`


## Get a Specific Location


```shell
curl -X GET  "http://localhost:3000/v1/locations/83911d17-b56e-4c11-bc5b-485c8cba8513"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "657a33f9-6139-45a8-becd-f581809a8b05",
    "type": "locations",
    "links": {
      "self": "http://localhost:3000/v1/locations/657a33f9-6139-45a8-becd-f581809a8b05"
    },
    "attributes": {
      "address-line-1": "123 Fake Street",
      "address-line-2": null,
      "city": "Fakeville",
      "state": "CA",
      "zipcode": "91666",
      "notes": "Buzzer is broken.  Email when you arrive"
    }
  }
}
```

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
  -d '  {
		"data": {
			"type": "locations",
			"attributes": {
				"address-line-1": "121 Fake Street",
				"city": "Fakeville",
				"state": "CA",
				"zipcode": "91666",
				"notes": "Buzzer is broken.  Email when you arrive"
			}
		}
	}'
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "657a33f9-6139-45a8-becd-f581809a8b05",
    "type": "locations",
    "links": {
      "self": "http://localhost:3000/v1/locations/657a33f9-6139-45a8-becd-f581809a8b05"
    },
    "attributes": {
      "address-line-1": "123 Fake Street",
      "address-line-2": null,
      "city": "Fakeville",
      "state": "CA",
      "zipcode": "91666",
      "notes": "Buzzer is broken.  Email when you arrive"
    }
  }
}
```

### HTTP Request

`POST "http://localhost:3000/v1/locations`
