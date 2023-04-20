Feature:Testing creating and updating a pet in pet store

  Background:
    * def URL = _url
  @TC5 @Regression
  Scenario: Create and get a pet in pet store
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
    And print response.id
    Given path response.id
    When method get
    Then status 200