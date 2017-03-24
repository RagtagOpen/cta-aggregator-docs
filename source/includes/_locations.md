# Locations

## Get All Locations

```shell
curl -X GET  "http://localhost:3000/v1/locations"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
```

This endpoint retrieves all locations.

### HTTP Request

`GET http://localhost:3000/locations`

### Filter

You can filter based on the following attribteus

Filter    | Example
--------- |  -----------
address_line_1    | `GET "http://localhost:3000/locations?filter[address_line_1]=123 Fake St."`
city | `GET "http://localhost:3000/locations?filter[city]=Detroit"`
state | `GET "http://localhost:3000/locations?filter[state]=ID"`
zipcode | `GET "http://localhost:3000/locations?filter[zipcode]=66001"`


## Get a Specific Location


```shell curl -X GET  "http://localhost:3000/v1/locations/83911d17-b56e-4c11-bc5b-485c8cba8513"
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

`GET "http://localhost:3000/locations/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the location to retrieve


## Create a Location

```shell
curl -X POST 
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
   "http://localhost:3000/v1/locations"
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
