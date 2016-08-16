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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNTd9.rJ4Qa6a9zzs_VO0CLgrIy38HNeqo_ZowqHMaTGEU1o0
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: vgetibj3iuslro7700ee0usg69vaogqf
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNTB9.Q2beT4hgdXjqFF410lr30WjTOUmuhD2eo4_eAEJ_pPU
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 250,
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
x-request-id: iq6hd4j4hojne7u5a0274ld00a5ubd05
location: /api/issues/72
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": null,
    "reportedDate": "2016-08-16T00:59:49Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 72,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.delete
#### deletes an issue
##### Request
* __Method:__ DELETE
* __Path:__ /api/issues/75
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNTZ9.v8ieAbuLqdnldiYVUlUePXiDOeyz9QDeoxN8kmBEsKc
accept: application/json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: i5q0cephgk7sphl6c00jh7n80af2ngso
```
* __Response body:__
```json

```

### CulturalTrailApi.IssueController.show
#### shows an issue by id
##### Request
* __Method:__ GET
* __Path:__ /api/issues/73
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNTF9.z2D9-oyl8YlX8GDlS_edPQgizK-hocZmBryqYhhfoSs
accept: application/json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: jmm9udpoqiclaorbulr6th4tp1vmgr41
```
* __Response body:__
```json
{
  "data": {
    "resolvedDate": "2016-08-16T00:59:50Z",
    "reportedDate": "2016-08-16T00:59:50Z",
    "reportedBy": "Fake Name",
    "priority": 42,
    "open": true,
    "name": "some content",
    "lng": 120.5,
    "lat": 120.5,
    "imageUrl": "some content",
    "id": 73,
    "description": "some content"
  }
}
```

### CulturalTrailApi.IssueController.update
#### updates an issue
##### Request
* __Method:__ PUT
* __Path:__ /api/issues/74
* __Request headers:__
```
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNTJ9.fwpc2rsYAwI1FkE5JrVMWrMXhYnh7emX6-RDbubu_xk
accept: application/json
content-type: multipart/mixed; charset: utf-8
```
* __Request body:__
```json
{
  "issue": {
    "user_id": 252,
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
x-request-id: 0478ti5hcoks0ou9vatndc32mkqmt8qp
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
    "id": 74,
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
x-request-id: k89kcujia6r4707r0p1hs38cchvugiqv
```
* __Response body:__
```json
{
  "data": {
    "name": "username",
    "id": 246,
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
x-request-id: kns29o1mn0gqaclq3tdg831g714c4avt
```
* __Response body:__
```json
{
  "data": {
    "user_id": 243,
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNDN9.sSTBQFnJ1B0VPI2dL8bqzYBZwAhLtZuXmmJz24z38X4"
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyNDJ9.fy2csecYsLSCYQYUVyxva7R0EQcGLhC00Ka1O0eqiWQ
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 625r48pcnveph988aainvsl6hcjc4eqh
```
* __Response body:__
```json
{
  "data": {
    "valid": true
  }
}
```

