---
title: Venga Dine API
language_tabs:
  - shell: cURL
  - javascript--nodejs: node.js
  - ruby: Ruby
  - python: Python
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="Venga-Dine-API">Venga Dine API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Venga Dine API. For support contact <a href="mailto:support@getvenga.com">support@getvenga.com</a>.

Base URLs:

* https://dine-api.getvenga.com/v1/


# Authentication

The Venga Dine API uses [HTTP Basic](https://tools.ietf.org/html/rfc7617) authentication. Contact your Venga CSM to obtain an username and password for use with the API.

<h1 id="Venga-Dine-API-guest">Guests</h1>

Add or update guest information.

## POST /guests

> Code samples

```shell
# You can also use wget
curl -X POST https://dine-api.getvenga.com/v1/guests \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "first_name": "John",
  "last_name": "Smith",
  "email": "john@test.com",
  "phone": 2155551212,
  "guest_id": 55778,
  "guest_data": [
    {
      "name": "Seating Preference",
      "data_type": "text",
      "value": "Patio"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://dine-api.getvenga.com/v1/guests',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://dine-api.getvenga.com/v1/guests',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://dine-api.getvenga.com/v1/guests', params={

}, headers = headers)

print r.json()

```

`POST /guests`

*Adds or updates a guest's information*

Creates a new guest or updates an existing guest with new information. If the `guest_id` parameter is supplied, an existing guest is updated with new information. If `guest_id` is not supplied, first an existing guest is looked up using the supplied `first_name`, `last_name`, and either `email` or `phone`. If an existing guest is found, that guest is updated with new information. Otherwise a new guest is created.

> Body parameter

```json
{
  "first_name": "John",
  "last_name": "Smith",
  "email": "john@test.com",
  "phone": 2155551212,
  "guest_id": 55778,
  "guest_data": [
    {
      "name": "Seating Preference",
      "data_type": "text",
      "value": "Patio"
    }
  ]
}
```

<h3 id="post__guests-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Guest](#schemaguest)|true|none|

> Example responses

> 200 Response

```json
{
  "code": 200,
  "guest_id": 12345
}
```

<h3 id="post__guests-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Guest created or updated|[GuestUpdated](#schemaguestupdated)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|There was a problem with the request.|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|

<h3 id="post__guests-responseschema">Response Schema</h3>

Status Code **400**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» code|integer|false|none|none|
|» error|string|false|none|none|
|» entity|object|false|none|none|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|401|WWW_Authenticate|string||none|

<aside class="warning">
To perform this operation, you must be authenticated by using HTTP Basic Auth.
</aside>

<h1 id="Venga-Dine-API-review">Reviews</h1>

Add review information.

## POST /reviews

> Code samples

```shell
# You can also use wget
curl -X POST https://dine-api.getvenga.com/v1/reviews \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "venueId": 1234,
  "source": "Mobile App",
  "reviews": [
    {
      "id": "20180709-1",
      "date": "2018-07-09T21:05:38Z",
      "responses": [
        {
          "type": "custom_scale",
          "question": "How was the service?",
          "answer": "It was amazing",
          "min": 1,
          "max": 10,
          "options": [
            "Friend",
            "TV ad",
            "Word of mouth"
          ]
        }
      ],
      "user": {
        "id": "customer-867",
        "first_name": "Josephine",
        "last_name": "Jones",
        "email": "jjones@test.com",
        "phone": 5555555555,
        "birthday": "1970-02-01T00:00:00.000Z"
      },
      "visit": {
        "date": "2018-07-16T21:05:38Z",
        "check": "7826-987"
      }
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://dine-api.getvenga.com/v1/reviews',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://dine-api.getvenga.com/v1/reviews',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://dine-api.getvenga.com/v1/reviews', params={

}, headers = headers)

print r.json()

```

`POST /reviews`

*Adds reviews to Venga's system*

Adds reviews to Venga's system. Guest data can also be supplied with the review.

> Body parameter

```json
{
  "venueId": 1234,
  "source": "Mobile App",
  "reviews": [
    {
      "id": "20180709-1",
      "date": "2018-07-09T21:05:38Z",
      "responses": [
        {
          "type": "custom_scale",
          "question": "How was the service?",
          "answer": "It was amazing",
          "min": 1,
          "max": 10,
          "options": [
            "Friend",
            "TV ad",
            "Word of mouth"
          ]
        }
      ],
      "user": {
        "id": "customer-867",
        "first_name": "Josephine",
        "last_name": "Jones",
        "email": "jjones@test.com",
        "phone": 5555555555,
        "birthday": "1970-02-01T00:00:00.000Z"
      },
      "visit": {
        "date": "2018-07-16T21:05:38Z",
        "check": "7826-987"
      }
    }
  ]
}
```

<h3 id="post__reviews-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Review](#schemareview)|true|none|

> Example responses

> 201 Response

```json
{
  "code": 201
}
```

<h3 id="post__reviews-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Review added|[ReviewAdded](#schemareviewadded)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|There was a problem with the request.|Inline|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Authentication information is missing or invalid|None|
|413|[Payload Too Large](https://tools.ietf.org/html/rfc7231#section-6.5.11)|The payload is too large.|Inline|

<h3 id="post__reviews-responseschema">Response Schema</h3>

Status Code **400**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» code|integer|false|none|none|
|» error|string|false|none|none|
|» entity|object|false|none|none|

Status Code **413**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» code|integer|false|none|none|
|» error|string|false|none|none|
|» entity|object|false|none|none|

### Response Headers

|Status|Header|Type|Format|Description|
|---|---|---|---|---|
|401|WWW_Authenticate|string||none|

<aside class="warning">
To perform this operation, you must be authenticated by HTTP Basic Auth.
</aside>

# Schemas

<h2 id="tocSguest">Guest</h2>

<a id="schemaguest"></a>

```json
{
  "first_name": "John",
  "last_name": "Smith",
  "email": "john@test.com",
  "phone": 2155551212,
  "guest_id": 55778,
  "guest_data": [
    {
      "name": "Seating Preference",
      "data_type": "text",
      "value": "Patio"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|first_name|string|true|none|Guest's first name|
|last_name|string|true|none|Guest's last name|
|email|string|false|none|Guest's email. Email, phone, or guest ID are required.|
|phone|string|false|none|Guest's phone. Email, phone, or guest ID are required.|
|guest_id|integer|false|none|Guest ID. Email, phone, or guest ID are required.|
|guest_data|[[GuestData](#schemaguestdata)]|false|none|Additional data about the guest.|

<h2 id="tocSguestdata">GuestData</h2>

<a id="schemaguestdata"></a>

```json
{
  "name": "Seating Preference",
  "data_type": "text",
  "value": "Patio"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|The name of the custom guest data field|
|data_type|string|true|Must be one of the below values|The type of the custom guest data field|
|value|string|true|none|The value of the custom guest data field. Date type fields should be formatted as `YYYY-MM-DD`.|

### data_type Values

|Value|
|---|
|number|
|date|
|text|

<h2 id="tocSguestupdated">GuestUpdated</h2>

<a id="schemaguestupdated"></a>

```json
{
  "code": 200,
  "guest_id": 12345
}

```

*Guest created or updated*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|code|integer|false|none|none|
|guest_id|integer|false|none|The ID of the created or updated guest|

<h2 id="tocSreview">Review</h2>

<a id="schemareview"></a>

```json
{
  "venueId": 1234,
  "source": "Mobile App",
  "reviews": [
    {
      "id": "20180709-1",
      "date": "2018-07-09T21:05:38Z",
      "responses": [
        {
          "type": "custom_scale",
          "question": "How was the service?",
          "answer": "It was amazing",
          "min": 1,
          "max": 10,
          "options": [
            "Friend",
            "TV ad",
            "Word of mouth"
          ]
        }
      ],
      "user": {
        "id": "customer-867",
        "first_name": "Josephine",
        "last_name": "Jones",
        "email": "jjones@test.com",
        "phone": 5555555555,
        "birthday": "1970-02-01T00:00:00.000Z"
      },
      "visit": {
        "date": "2018-07-16T21:05:38Z",
        "check": "7826-987"
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|venueId|integer|true|none|Identifier associated with the restaurant venue|
|source|string|true|none|Source for the uploaded reviews|
|reviews|[[SingleReview](#schemasinglereview)]|true|none|An array of reviews|

<h2 id="tocSsinglereview">SingleReview</h2>

<a id="schemasinglereview"></a>

```json
{
  "id": "20180709-1",
  "date": "2018-07-09T21:05:38.000Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|true|none|Unique identifier for the review. Any duplicated ids submitted will edit the existing review.|
|date|string|true|none|Date of the review in ISO 8601 format|
|responses|[[QuestionResponse](#schemaquestionresponse)]|true|none|none|
|user|[ReviewUser](#schemareviewuser)|false|none|User metadata for the respondent|
|visit|[ReviewVisit](#schemareviewvisit)|false|none|Visit metadata for the respondent|

<h2 id="tocSquestionresponse">QuestionResponse</h2>

<a id="schemaquestionresponse"></a>

```json
{
  "type": "custom_scale",
  "question": "How was the service?",
  "answer": "It was amazing",
  "min": 1,
  "max": 10,
  "options": [
    "Friend",
    "TV Ad",
    "Word of mouth"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|type|string|true|Must be one of the below values|The question type|
|question|string|false|none|The question text|
|answer|string|true|none|The respondent's answer to the question|
|min|integer|false|Must be greater than 0|The minimum range value for a "custom_scale" question type. Must be a positive value.|
|max|integer|false|Must be greater than 0|The maximum range value for a "custom_scale" question type. Must be a positive value.|
|options|[string]|false|none|List of possible options for a multiple choice question|

### type Values

|Value|Description|
|---|---|
|overall|An overall rating for the review on a scale of 1 - 5. If omitted then at least one rating question type must be provided, and the overall rating will be auto-generated by averaging all rating type answers and normalizing for the 1 - 5 scale.|
|text|A text response question|
|noise|A rating specifically for the noise level of the experience. Can be used to calculate overall rating if one is not provided.|
|food|A rating specifically for the food of the experience. Can be used to calculate overall rating if one is not provided.|
|service|A rating specifically for the service level of the experience. Can be used to calculate overall rating if one is not provided.|
|ambiance|A rating specifically for the ambiance of the experience. Can be used to calculate overall rating if one is not provided.|
|yes_no|A yes or no response question.|
|custom_scale|A custom rating question. Can be used to calculate overall rating if one is not provided.|
|dropdown|A "pick one of the following" question.|
|checkbox|A "pick all that apply" question.|

<h2 id="tocSreviewuser">ReviewUser</h2>

<a id="schemareviewuser"></a>

```json
{
  "id": "customer-867",
  "first_name": "Josephine",
  "last_name": "Jones",
  "email": "jjones@test.com",
  "phone": "5555555555",
  "birthday": "1970-02-01T00:00:00.000Z"
}

```

*User metadata for the respondent*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|false|none|Unique identifier for the respondent|
|first_name|string|false|none|First name of the respondent|
|last_name|string|false|none|Last name of the respondent|
|email|string|false|none|Email address of the respondent|
|phone|string|false|none|Phone number of the respondent|
|birthday|string|false|none|Birthday of the respondent in format `YYYY-MM-DD`|

<h2 id="tocSreviewvisit">ReviewVisit</h2>

<a id="schemareviewvisit"></a>

```json
{
  "date": "2018-07-16T21:05:38Z",
  "check": "7826-987"
}

```

*Visit metadata for the respondent*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|date|string|false|none|The dined at time for the visit in ISO 8601 format|
|check|string|false|none|The unique POS check number for the visit|

<h2 id="tocSreviewadded">ReviewAdded</h2>

<a id="schemareviewadded"></a>

```json
{
  "code": 201
}

```

*Review added*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|code|integer|false|none|none|
