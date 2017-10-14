# Embedding CTA

The Call to Action feed can be embedded in your web site using
[AJAX](https://developer.mozilla.org/en-US/docs/AJAX/Getting_Started)
calls. The API automatically sets
[Cross-origin resource sharing (CORS)](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing)
headers allowing AJAX calls from browsers visiting your domain to the
API's domain. Note, this feature depends on the HTTP *Origin* header being
sent.  Web browsers do this automatically, however when debugging with
tools like *curl* or Postman, you may need to explicitly set it,
e.g. `curl -H 'Origin: example.com'`.

### Calling the API with pure JavaScript

To call the API in JavaScript you use
[XMLHttpRequest()](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Using_XMLHttpRequest). The
*onload* function will be called with the API data.

> Basic JavaScript Call

```javascript
req=new XMLHttpRequest();
req.onload=function(){
    response = JSON.parse(req.responseText);
    console.log(response);
};
req.open("GET",'https://www.resistr.tech/v1/events',true);
req.send();
```

The actual events will be an array returned in `response.data`,
`response.data[0].title` would contain the first event's
title. Typically, you would loop over this data add it to your page.

> Loop Through Events

```javascript
response.data.forEach(function(event) {
    document.body.innerHTML += '<p>' + event.title + '</p>';
});
```

[This example](samples/simple.html) use the above JavaScript to fetch
events and adds them to the page in a simple [definition list](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl).

It's a bit easier to use the API with libraries like [jQuery](https://jquery.com/):

> jQuery Version

```javascript
$.get( "https://www.resistr.tech/v1/events", function( response ) {
   console.log(response);
});
```

[This example](samples/jquery-bootstrap.html) fetches the events with
jQuery and styles them using the [Bootstrap](http://getbootstrap.com/)
framework.
