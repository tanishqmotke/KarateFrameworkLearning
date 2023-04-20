Feature: Testing DELETE method for a pet store
  Background:
    * def URL = _url
  @TC6 @Regression
  Scenario: Delete a pet from pet store

    Given url URL
    And path 1401
    When method delete
    Then status 200
