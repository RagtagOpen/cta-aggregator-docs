# Contacts

## Get All Contacts

```shell
curl -X GET  "http://localhost:3000/v1/contacts"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
  "data": [
    {
      "id": "83911d17-b56e-4c11-bc5b-485c8cba8513",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/83911d17-b56e-4c11-bc5b-485c8cba8513"
      },
      "attributes": {
        "name": "Fred FlintStone",
        "phone": null,
        "email": "fred flintstone_253da2124d8b53a1a571135cc4e2b049@example.com",
        "website": null
      }
    },
    {
      "id": "26f210d5-168d-4be6-9d78-2e8e3128a7c2",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/26f210d5-168d-4be6-9d78-2e8e3128a7c2"
      },
      "attributes": {
        "name": "Selena Kyle",
        "phone": null,
        "email": "selena kyle_a418daf7743074973ed8ca269af3eb55@example.com",
        "website": null
      }
    },
    {
      "id": "78ab493d-5be1-4c0f-ada3-ffd40c3aad1a",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/78ab493d-5be1-4c0f-ada3-ffd40c3aad1a"
      },
      "attributes": {
        "name": "Santa Claus",
        "phone": null,
        "email": "santa claus_b345bcf0cb3d317b63b2f97ecf4e9f22@example.com",
        "website": null
      }
    },
    {
      "id": "08104688-48ca-46bf-ad6c-db57f6211b18",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/08104688-48ca-46bf-ad6c-db57f6211b18"
      },
      "attributes": {
        "name": "Santa Claus",
        "phone": null,
        "email": "santa claus_fcfc6427c3dc24e408d6dabfe6441af2@example.com",
        "website": null
      }
    },
    {
      "id": "e8eebcef-c1e8-41a6-9a7e-756a65ef2d0e",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/e8eebcef-c1e8-41a6-9a7e-756a65ef2d0e"
      },
      "attributes": {
        "name": "John Doe",
        "phone": null,
        "email": "john doe_2472ac102069f585942c2290ac12ef61@example.com",
        "website": null
      }
    },
    {
      "id": "b0acf17c-186a-4eb0-905a-8ab196fb2a23",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/b0acf17c-186a-4eb0-905a-8ab196fb2a23"
      },
      "attributes": {
        "name": "Richard Nixon",
        "phone": null,
        "email": "richard nixon_1bacaf6dd575889505f39bdb3e4f402e@example.com",
        "website": null
      }
    },
    {
      "id": "eadb8672-ab99-4cc4-827f-ae770a2bd8c2",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/eadb8672-ab99-4cc4-827f-ae770a2bd8c2"
      },
      "attributes": {
        "name": "Selena Kyle",
        "phone": null,
        "email": "selena kyle_e6360fee22705187b287d76e109bc5b5@example.com",
        "website": null
      }
    },
    {
      "id": "aeeb712a-03aa-4577-8418-8cd2d58f3a26",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/aeeb712a-03aa-4577-8418-8cd2d58f3a26"
      },
      "attributes": {
        "name": "Wilma Filtstone",
        "phone": null,
        "email": "wilma filtstone_28e55b4f620e940893a42e1faadeb80d@example.com",
        "website": null
      }
    },
    {
      "id": "02a34d68-3dfb-4030-823b-ed8493786f97",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/02a34d68-3dfb-4030-823b-ed8493786f97"
      },
      "attributes": {
        "name": "Selena Kyle",
        "phone": null,
        "email": "selena kyle_5dc2fc2460c41c4cbc69a6e0a1187653@example.com",
        "website": null
      }
    },
    {
      "id": "a624aff0-b68b-4cde-9e1d-7e99ca393d7c",
      "type": "contacts",
      "links": {
        "self": "http://localhost:3000/v1/contacts/a624aff0-b68b-4cde-9e1d-7e99ca393d7c"
      },
      "attributes": {
        "name": "Wilma Filtstone",
        "phone": null,
        "email": "wilma filtstone_2abfba78ea24a018ac11cc7fa4966c91@example.com",
        "website": null
      }
    }
  ],
  "links": {
    "first": "http://localhost:3000/v1/contacts?page%5Bnumber%5D=1&page%5Bsize%5D=10",
    "next": "http://localhost:3000/v1/contacts?page%5Bnumber%5D=2&page%5Bsize%5D=10",
    "last": "http://localhost:3000/v1/contacts?page%5Bnumber%5D=5&page%5Bsize%5D=10"
  }
}
```

This endpoint retrieves all contacts.

### HTTP Request

`GET http://localhost:3000/v1/contacts`

### Filter

You can filter based on the following attribteus

Filter    | Example
--------- |  -----------
email     | `GET "http://localhost:3000/v1/contacts?filter[email]=Wilma@aol.com"`
name      | `GET "http://localhost:3000/v1/contacts?filter[name]=Wilma Flintstone"`


## Get a Specific Contact


```shell
curl -X GET  "http://localhost:3000/v1/contacts/83911d17-b56e-4c11-bc5b-485c8cba8513"
  -H "Accept: application/vnd.api+json"
  -H "Content-Type: application/vnd.api+json"
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "83911d17-b56e-4c11-bc5b-485c8cba8513",
    "type": "contacts",
    "links": {
      "self": "http://localhost:3000/v1/contacts/83911d17-b56e-4c11-bc5b-485c8cba8513"
    },
    "attributes": {
      "name": "Fred FlintStone",
      "phone": null,
      "email": "fred flintstone_253da2124d8b53a1a571135cc4e2b049@example.com",
      "website": null
    }
  }
}
```

### HTTP Request

`GET "http://localhost:3000/v1/contacts/<UUID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the contact to retrieve


## Create a Contact

```shell
curl -X POST "http://localhost:3000/v1/contacts/"
  -H "Accept: application/vnd.api+json" 
  -H "Content-Type: application/vnd.api+json" 
  -d '{
  "data": {
    "type": "contacts",
      "attributes": {
        "name": "Fred FlintStone",
        "phone": "123-456-7890",
        "email": "fredflintstone@example.com",
        "website": "www.StoneCold.com"
      }
    }
  }'
```

> The above command returns JSON structured like this:

```json
{
  "data": {
    "id": "25c96b80-6dbe-4dda-85a6-d760aa82f5a9",
    "type": "contacts",
    "links": {
      "self": "http://localhost:3000/v1/contacts/25c96b80-6dbe-4dda-85a6-d760aa82f5a9"
    },
    "attributes": {
      "name": "Fred FlintStone",
      "phone": "123-456-7890",
      "email": "fredflintstone@example.com",
      "website": "www.StoneCold.com"
    }
  }
}
```

### HTTP Request

`POST "http://localhost:3000/v1/contacts`
