Feature: Sample API test

  @Test
  Scenario: Test
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    Then print "#####Done 1st"

  @Test
  Scenario: Testing
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 400
    Then print "#####Done 2st"

