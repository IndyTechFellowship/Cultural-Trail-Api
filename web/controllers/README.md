# API Documentation

* [CulturalTrailApi.DamagedItemsController](#culturaltrailapidamageditemscontroller)
  * [index](#culturaltrailapidamageditemscontrollerindex)
* [CulturalTrailApi.IssueController](#culturaltrailapiissuecontroller)
  * [create](#culturaltrailapiissuecontrollercreate)
  * [delete](#culturaltrailapiissuecontrollerdelete)
  * [show](#culturaltrailapiissuecontrollershow)
  * [update](#culturaltrailapiissuecontrollerupdate)
* [CulturalTrailApi.RegistrationController](#culturaltrailapiregistrationcontroller)
  * [create](#culturaltrailapiregistrationcontrollercreate)
* [CulturalTrailApi.SessionController](#culturaltrailapisessioncontroller)
  * [login](#culturaltrailapisessioncontrollerlogin)
  * [validate](#culturaltrailapisessioncontrollervalidate)

## CulturalTrailApi.DamagedItemsController
### CulturalTrailApi.DamagedItemsController.index
#### Get all options for damaged options
##### Request
* __Method:__ GET
* __Path:__ /api/damages
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzZ9.YmSJj-axtaa4XZATf9x8pM37OORxdW-zD5vtkK5EpO4
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 7rlku6b9fdp4on63up5e9pfju2nkjjlk
```
* __Response body:__
```json
{
  "data": [
    {
      "item": "some thing",
      "damages": [
        "broken",
        "dead",
        "hurt"
      ]
    }
  ]
}
```

## CulturalTrailApi.IssueController
### CulturalTrailApi.IssueController.create
#### creates an issue
##### Request
* __Method:__ POST
* __Path:__ /api/issues
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzF9.SKKr7ii-kSpBTh-aq-_XqIR1ktyAN5Zei9XACqJS8dU
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 131,
    "responsibleParty": "someone",
    "priority": 42,
    "name": "some content",
    "lng": "120.5",
    "lat": "120.5",
    "imageUrl": "some content",
    "description": "some content"
  }
}
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 6r92gmf07urstfrfmve1i0qd66sbiji5
location: /api/issues/35
```
* __Response body:__
```json
{
  "data": {
    "responsibleParty": "someone",
    "resolvedDate": null,
    "reportedDate": "2016-11-10T02:23:38Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 35,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.delete
#### deletes an issue
##### Request
* __Method:__ DELETE
* __Path:__ /api/issues/37
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzR9.TdOOCyK_-GsWo4sMMXlXi10alwlJBvRaV883O-CVtEA
accept: application/json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: ttfuiavmu1iaci0dku55fkef3m2dal2u
```
* __Response body:__
```json

```

### CulturalTrailApi.IssueController.show
#### shows an issue by id
##### Request
* __Method:__ GET
* __Path:__ /api/issues/34
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzB9.Hl1T1Q7htf0WKKtfCu-uRDsuuz5VnwQjaik2XyHcJzE
accept: application/json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 4p96a5vnlrnhbur5c1gvcthubgo3d2kh
```
* __Response body:__
```json
{
  "data": {
    "responsibleParty": null,
    "resolvedDate": "2016-11-10T02:23:38Z",
    "reportedDate": "2016-11-10T02:23:38Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 34,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.update
#### updates an issue
##### Request
* __Method:__ PUT
* __Path:__ /api/issues/36
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzJ9.FfsAfUcIcLKz0cx_GHhxdT2s0-z8JfzNkEDeWVVwbnE
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 132,
    "responsibleParty": "someone",
    "resolvedDate": "2010-04-17 14:00:00",
    "reportedDate": "2010-04-17 14:00:00",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": "120.5",
    "lat": "120.5",
    "imageUrl": "some content",
    "description": "some content"
  }
}
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 8s4onh838qnif5khvdccjashn05eimhq
```
* __Response body:__
```json
{
  "data": {
    "responsibleParty": "someone",
    "resolvedDate": null,
    "reportedDate": "2010-04-17T14:00:00Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 36,
    "description": "some content"
  }
}
```

## CulturalTrailApi.RegistrationController
### CulturalTrailApi.RegistrationController.create
#### Create an Account
##### Request
* __Method:__ POST
* __Path:__ /auth
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "user": {
    "password": "validPassword",
    "name": "username",
    "email": "someone@example.com"
  }
}
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: qgc0hd3qddv7lpgmlrco56pfa1ri2piv
```
* __Response body:__
```json
{
  "data": {
    "name": "username",
    "id": 121,
    "email": "someone@example.com"
  }
}
```

## CulturalTrailApi.SessionController
### CulturalTrailApi.SessionController.login
#### Login a registered user
##### Request
* __Method:__ POST
* __Path:__ /auth/login
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "user": {
    "password": "validPassword",
    "email": "user@example.com"
  }
}
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: q95vskbe418s3eoums8imng1huvcmns5
```
* __Response body:__
```json
{
  "data": {
    "user_id": 126,
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMjZ9.S9auG4Q6ZOcGfPZFwdy060m1tIugG7qN3CtCir3WlB4"
  }
}
```

### CulturalTrailApi.SessionController.validate
#### Check if token is valid
##### Request
* __Method:__ GET
* __Path:__ /api/auth/validate
* __Request headers:__
```
accept: application/json
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMjR9.uMaowjcfcC7zWj-zFk6ClasbNKzLn6Gobs69lTvT_w8
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: j59eo77u3evj6mdm5ucviav44m5trjj2
```
* __Response body:__
```json
{
  "data": {
    "valid": true
  }
}
```

