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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTk4fQ.m83xrMy4b1M-R9hs2Ep5KHmpUDvd2pBoweSJ0qTFSzE
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 66vsq67toiugvck2d6192o1ua16m70ol
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
#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/issues
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTg2fQ.S4GP9s4AmtftzrPnjpNY0hj_J5MDO_ViEQNFgOfs1Aw
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 1186,
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
x-request-id: mr5jtkqdkfr67edd5v3va08pdltg6n7v
location: /api/issues/255
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": null,
    "reportedDate": "2016-07-31T22:12:44Z",
    "reportedBy": "something@test.com",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 255,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/issues/257
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTg4fQ.ke-_aqtrvajQMA0V99LULW1FlQTM4zie5iob8sTbrhU
accept: application/json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: t6jcshemutjvjug22u73dlpasdengtk6
```
* __Response body:__
```json

```

### CulturalTrailApi.IssueController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/issues/258
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTg5fQ.p6FiTyXIHP8dErk_G1PkBHsyqsAryXiOqzce9PysNjE
accept: application/json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: hkm5tdrpa35dhj4p6nnsrdekuqj2633d
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": "2016-07-31T22:12:45Z",
    "reportedDate": "2016-07-31T22:12:45Z",
    "reportedBy": "something@test.com",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 258,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.update
#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/issues/256
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTg3fQ.lOOydjrBiJnPukjX_lpdh5-L3aNgTa2CWU79jZHxAvw
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 1187,
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
x-request-id: unj25tmv0j0api106glo8v285ndhkfb7
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": null,
    "reportedDate": "2010-04-17T14:00:00Z",
    "reportedBy": "something@test.com",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 256,
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
x-request-id: h46ohd8ms8op4hkauhucd3gfbqtac4vu
```
* __Response body:__
```json
{
  "data": {
    "id": 1195,
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
x-request-id: 6aidmkr75svoqhohceckr5kgquaq67a8
```
* __Response body:__
```json
{
  "data": {
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTkzfQ.AcqKMSiASw_XqyTQsK69ibyCNVZvrYVym_vICrhrXEg"
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMTkxfQ._U6FkPT2_qy4tUCtU1IyGFIPH2x2EIcFW2mEdJl8wn4
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: kii53svo3cakfmis2tab1bliuoasv2ij
```
* __Response body:__
```json
{
  "data": {
    "valid": true
  }
}
```

