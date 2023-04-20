Feature: Testing Put method in pet store
  Background:
    * def URL = _url

  @TC8 @Regression
  Scenario: Update a pet in pet store
    Given url URL
    * def pet =
    """
    {
  "id": 1401,
  "category": {
  "id": 01,
  "name": "Lucky1"
  },
  "name": "doggie",
  "photoUrls": [
  "www.lucky.com"
  ],
  "tags": [
  {
  "id": 02,
  "name": "luckie1"
  }
  ],
  "status": "available"
  }
    """
   And request pet
   When method put
    Then status 200
    And print response
    And print 'Updated id is :',response.id

