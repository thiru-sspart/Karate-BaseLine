Feature: Sample API test

  Background:
    * url baseUrl

  @Test
  Scenario: Test
    Given path '/users/2'
    When method GET
    Then status 200
    Then print "#####Done 1st"

  @Test
  Scenario: Testing
    Given path '/users/2'
    When method GET
    Then status 200
    Then print "#####Done 2st"

    Scenario Outline: Post Testing
      Given path '/users'
      And def bodyofRequest = karate.merge(<columnname> ,read('Sample.json'))
      And request bodyofRequest
      When method POST
      Then status 201
      Then match response contains <name>
      Examples:
      |columnname|name|
      |{"job": "leader"}|{ "name": "morpheus"}|



