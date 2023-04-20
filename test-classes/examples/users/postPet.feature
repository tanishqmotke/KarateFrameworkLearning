Feature: Testing POST method for pet store

  Background:
  * def URL = _url

  @TC7 @Regression
  Scenario: Create a pet in pet store
    * def pet =
    """
  {
  "id": 1401,
  "category": {
  "id": 01,
  "name": "Lucky"
  },
  "name": "doggie",
  "photoUrls": [
  "www.lucky.com"
  ],
  "tags": [
  {
  "id": 02,
  "name": "luckie"
  }
  ],
  "status": "available"
  }
"""
    Given url URL
    And request pet
    When method post
    Then status 200
    * def id = response.id
    And print 'created id is:', id