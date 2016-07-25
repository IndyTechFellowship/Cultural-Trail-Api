# API Documentation

* [CulturalTrailApi.DamagedItemsController](#culturaltrailapidamageditemscontroller)
  * [index](#culturaltrailapidamageditemscontrollerindex)
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNzJ9.dv2J8jN2XOsKrf5M_fG7OYgkqCO2Vznu_xdgTnNMSMc
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 4j5loocd69e28srap9rbvn4k4lhm05ne
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
x-request-id: bphhn958jpbp2p8ua9ta4aeltvpaj8e8
```
* __Response body:__
```json
{
  "data": {
    "id": 179,
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
x-request-id: qu7nggvl19kbgp4vfk2gin0clko0a6d2
```
* __Response body:__
```json
{
  "data": {
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNzV9.FhFyqJvN5F9UbEyhHZcbvTERuAk1o2sRrbB55qfq1fQ"
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
api-token: Token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNzR9.0sBOhexcZ_vF0LAzQQbnh4cLIALPfC-hdeAy7RCqeLg
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: cvje1bdv8kboi44cvac8ehl152hoarhb
```
* __Response body:__
```json
{
  "data": {
    "valid": true
  }
}
```

