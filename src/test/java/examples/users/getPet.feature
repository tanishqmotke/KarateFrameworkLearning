Feature: Testing GET method for pet store  https://petstore.swagger.io/#/pet/addPet

  Background:
  * def URL = _url
#  {
#  "id": 1001,
#  "category": {
#  "id": 100101,
#  "name": "Volley"
#  },
#  "name": "Volley",
#  "photoUrls": [
#  "www.Volley.com"
#  ],
#  "tags": [
#  {
#  "id": 100102,
#  "name": "Strong"
#  }
#  ],
#  "status": "available"
#  }
  @TC1 @Regression
  Scenario: GET DETAILS FOR 1001
    Given url URL
#    This is base url https://petstore.swagger.io/v2/pet/
    And path '1001'
#    Here we have passed the path parameter 1001
    When method GET
#    Here we are making a GET call
    Then status 200
#    Here we are expecting the status code as 200
    And print response
    And print response.name
#    We use response keyword to print the latest response received from server
    And match response.name == "Volley"
    And match response.name != "Volleyed"
    And match response contains {"photoUrls": ["www.Volley.com"]}
    And match response.category.id == 100101
    And match response contains deep { "id":1001, "category": { "name":"Volley"} }
    And match response contains deep {"name": "Volley","photoUrls": ["www.Volley.com"],"tags": [{"name": "Strong"}], "status": "available"}

#  {
#  "id": 1002,
#  "category": {
#  "id": 100101,
#  "name": "Sheru"
#  },
#  "name": "Sheru",
#  "photoUrls": [
#  "www.Sheru.com"
#  ],
#  "tags": [
#  {
#  "id": 100102,
#  "name": "Strong"
#  }
#  ],
#  "status": "available"
#  }
  @TC2 @Regression
  Scenario: GET DETAILS FOR 1002
    Given url URL
#    This is base url https://petstore.swagger.io/v2/pet/
    And path '1002'
#    Here we have passed the path parameter 1001
    When method GET
#    Here we are making a GET call
    Then status 200
#    Here we are expecting the status code as 200
    And print response

  @TC3 @Regression
  Scenario: NEGATIVE ID DOESN'T EXIST
    Given url URL
#    This is base url https://petstore.swagger.io/v2/pet/
    And path '1111'
#    Here we have passed the path parameter 1001
    When method GET
#    Here we are making a GET call
    Then status 404
#    Here we are expecting the status code as 200
    And print response

@TC4 @Regression @Smoke
  Scenario Outline: OPTIMIZED Test Case for GET Functionality
    Given url URL
    And path Id
    When method GET
    Then status <StatusCode>
    And print response
    Examples:
    |Id  |StatusCode|
    |1001|200       |
    |1002|200       |
    |1111|404       |
    |1401|200       |














#    Scenario: DELETE DETAILS FOR 1001
#
#      Given url 'https://petstore.swagger.io/v2/pet'
#
#      And path '1001'
#
#      When method DELETE
#
#      Then status 200
#
#      And print response

