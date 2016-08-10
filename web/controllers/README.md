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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMDZ9.ajQ0TbVE-WcA4tdJjYbkKM7i_mcxr5IFH6v5jc428BE
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: nvm1feie92evr25mj6j8fcv93bqk8nte
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxOTl9.8DdpLTwVgqktN3bD91JQuvmmmHBZDBgbde2HCKTHuhw
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 199,
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
x-request-id: jdsm5j25g2g7n508n9vjfag1pi73qi67
location: /api/issues/57
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": null,
    "reportedDate": "2016-08-09T23:55:42Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 57,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.delete
#### deletes an issue
##### Request
* __Method:__ DELETE
* __Path:__ /api/issues/60
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMDR9.jfOId4YeQRsh4-TKoW5XY-VIRA9gmQbBnLgLJDGZCVs
accept: application/json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: on4cctnd1mgp011vfuh74cgfes5l4q4i
```
* __Response body:__
```json

```

### CulturalTrailApi.IssueController.show
#### shows an issue by id
##### Request
* __Method:__ GET
* __Path:__ /api/issues/58
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMDB9.q0cJzqJj0V2CPbs-eTMTb-VlLdvJqUW5iduLGuX41_Q
accept: application/json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: gnl3v5quk2fejr0he0p2gbscnlqgc5dn
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": "2016-08-09T23:55:43Z",
    "reportedDate": "2016-08-09T23:55:43Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 58,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.update
#### updates an issue
##### Request
* __Method:__ PUT
* __Path:__ /api/issues/59
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMDN9.3jW3kF5sWSm92yuRZ3IDxgqZUoJJmWeKWG6YM93-uRY
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 203,
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
x-request-id: inrbpetibq9ji75ahhd8s6irdtlu2dfo
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": null,
    "reportedDate": "2010-04-17T14:00:00Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 59,
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
x-request-id: le8uunqdv8li2m4nek8g3npb2l2as2ov
```
* __Response body:__
```json
{
  "data": {
    "name": "username",
    "id": 191,
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
x-request-id: sg12isi4pfhfhgf1g3p5ara7h92oq984
```
* __Response body:__
```json
{
  "data": {
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxOTZ9.pp4qhCMQonEcQj1pp7lrTpqrS_Y5F8lFY3U9guvEbq0"
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxOTR9.ChkJkqY_WxsKpRM-hSMlSNhmm6NXtWEYEgPlVJI5ED0
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 22eva4hkrblrvgd3uimn2c9tllbff9f5
```
* __Response body:__
```json
{
  "data": {
    "valid": true
  }
}
```

