# Scripts

A script contains text that might be associated with a call to action.

This resource is most commonly associated with phone Calls to Actions, but onsite CTAs may have them too.

The same script may be used in multiple calls to action. 


### Script Attributes

Attribute   | Data Type | Meaning
----------  | -------   | -------
id          | uuid      | unique identifier
text        | string    | full text for script

## Get All Script

```shell
curl -X GET  "http://localhost:3000/v1/scripts"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
  "data": [
    {
      "id": "32475091-8066-4c4f-a3b1-24c451113797",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/32475091-8066-4c4f-a3b1-24c451113797"
      },
      "attributes": {
        "text": "dolore in Lorem dolor velit anim nostrud consectetur nulla qui ipsum dolor Duis voluptate quis tempor veniam minim Ut exercitation non elit deserunt adipiscing ad"
      }
    },
    {
      "id": "1ff06864-8e5c-4992-a368-dae07589a237",
      "type": "script",
      "links": {
        "self": "http://localhost:3000/v1/script/1ff06864-8e5c-4992-a368-dae07589a237"
      },
      "attributes": {
        "text": "nulla tempor in incididunt laboris dolore ullamco amet consectetur deserunt Ut eu culpa dolor Excepteur et exercitation veniam anim occaecat sint ut ad in Duis"
      }
    },
    {
      "id": "7661844c-5845-45b3-a992-4a7e404b21ae",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/7661844c-5845-45b3-a992-4a7e404b21ae"
      },
      "attributes": {
        "text": "eiusmod enim ea in laboris deserunt Lorem sed voluptate mollit aliqua et officia eu cupidatat consequat dolor nulla dolore labore proident magna minim sunt nostrud"
      }
    },
    {
      "id": "3c0b444b-3aae-4a37-bc40-d6a9b6fdccf0",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/3c0b444b-3aae-4a37-bc40-d6a9b6fdccf0"
      },
      "attributes": {
        "text": "sint dolore sit dolor ullamco sunt proident et nostrud culpa tempor amet pariatur labore ea consectetur aliqua reprehenderit cupidatat voluptate nulla quis in aliquip id"
      }
    },
    {
      "id": "249f70a3-828c-4698-b26c-7f442e80cebe",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/249f70a3-828c-4698-b26c-7f442e80cebe"
      },
      "attributes": {
        "text": "dolor nisi fugiat Duis cupidatat dolore Ut dolore consectetur aute esse cillum elit in amet laboris ullamco deserunt culpa ut ipsum aliquip Lorem irure et"
      }
    },
    {
      "id": "90526d4d-80f5-406d-a707-af24c9cbb609",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/90526d4d-80f5-406d-a707-af24c9cbb609"
      },
      "attributes": {
        "text": "id ipsum dolore dolor deserunt irure veniam ea laboris Duis fugiat tempor sint ullamco pariatur Lorem sunt incididunt aliquip ad adipiscing ex enim ut in"
      }
    },
    {
      "id": "2f278224-63b4-4a21-ba7b-ea917b76f6e0",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/2f278224-63b4-4a21-ba7b-ea917b76f6e0"
      },
      "attributes": {
        "text": "aute irure Lorem cillum Excepteur amet sint consectetur non pariatur minim reprehenderit deserunt commodo aliqua esse elit nisi anim sit labore velit culpa magna in"
      }
    },
    {
      "id": "830ef8a7-0e55-4ccd-add0-9e28439388d6",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/830ef8a7-0e55-4ccd-add0-9e28439388d6"
      },
      "attributes": {
        "text": "et adipiscing proident sit sed ad eiusmod eu Excepteur irure voluptate id officia cupidatat quis nostrud laborum pariatur Duis sunt dolore culpa anim do laboris"
      }
    },
    {
      "id": "76fdde94-4c19-426b-829d-47f96aef6471",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/76fdde94-4c19-426b-829d-47f96aef6471"
      },
      "attributes": {
        "text": "ut amet sed mollit in veniam eu nisi nostrud non deserunt elit tempor adipiscing qui anim commodo ad dolore sunt enim officia reprehenderit est ex"
      }
    },
    {
      "id": "c8193a69-4605-4567-855f-62a096aad627",
      "type": "scripts",
      "links": {
        "self": "http://localhost:3000/v1/scripts/c8193a69-4605-4567-855f-62a096aad627"
      },
      "attributes": {
        "text": "est id dolore aliqua sunt labore consectetur velit laborum non nulla enim Excepteur nisi amet dolor incididunt eu esse consequat cillum tempor ex in fugiat"
      }
    }
  ],
  "links": {
    "first": "http://localhost:3000/v1/scripts?page%5Bnumber%5D=1&page%5Bsize%5D=10",
    "next": "http://localhost:3000/v1/scripts?page%5Bnumber%5D=2&page%5Bsize%5D=10",
    "last": "http://localhost:3000/v1/scripts?page%5Bnumber%5D=3&page%5Bsize%5D=10"
  }
}
```

This endpoint retrieves all scripts.

### HTTP Request

`GET http://localhost:3000/v1/scripts`

## Get a Specific Script


```shell
curl -X GET  "http://localhost:3000/v1/scripts/83911d17-b56e-4c11-bc5b-485c8cba8513"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "32475091-8066-4c4f-a3b1-24c451113797",
    "type": "scripts",
    "links": {
      "self": "http://localhost:3000/v1/scripts/32475091-8066-4c4f-a3b1-24c451113797"
    },
    "attributes": {
      "text": "dolore in Lorem dolor velit anim nostrud consectetur nulla qui ipsum dolor Duis voluptate quis tempor veniam minim Ut exercitation non elit deserunt adipiscing ad"
    }
  }
}
```

### HTTP Request

`GET "http://localhost:3000/v1/script/<UUID>`

## Create a Script

```shell
curl -X POST "http://localhost:3000/v1/scripts/"
  -H "Accept: application/vnd.api+json" 
  -H "Content-Type: application/vnd.api+json" 
	-d '{
  "data": {
    "type": "scripts",
    "attributes": {
     "text": "dolore in Lorem dolor velit anim velit nostrud consectetur nulla qui ipsum dolor Duis volupta "
    }
  }
}' 
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "9084a470-bbee-48bf-aa69-b6a8ff8a5cd8",
    "type": "scripts",
    "links": {
      "self": "http://localhost:3000/v1/scripts/9084a470-bbee-48bf-aa69-b6a8ff8a5cd8"
    },
    "attributes": {
      "text": "dolore in Lorem dolor velit anim velit nostrud consectetur nulla qui ipsum dolor Duis volupta "
    }
  }
}
```

### HTTP Request

`POST "http://localhost:3000/v1/scripts`

##  Duplicate Scripts

```shell

curl -X POST "http://localhost:3000/v1/scripts/"
  -H "Accept: application/vnd.api+json" 
  -H "Content-Type: application/vnd.api+json" 
	-d '{
  "data": {
    "type": "scripts",
    "attributes": {
     "text": "dolore in Lorem dolor velit anim velit nostrud consectetur nulla qui ipsum dolor Duis volupta "
    }
  }
}' 
```

> The above command returns JSON structured like this:

```json
{
  "errors": [
    {
      "title": "already exists.  Use script with uuid 9084a470-bbee-48bf-aa69-b6a8ff8a5cd8",
      "detail": "script - already exists.  Use script with uuid 9084a470-bbee-48bf-aa69-b6a8ff8a5cd8",
      "code": "100",
      "source": {
        "pointer": "/data/attributes/script"
      },
      "status": "422"
    }
  ]
}
```

### Duplicates

Duplicates are not permitted.

In the case where an API consumer attempts to create a Script that already exists, the POST request will respond with an error status code.  
Inspect the error message to get the UUID of the preexisting Script.
