 Feature: Generate Token

  Scenario: Get Token
    Given url 'https://dummyjson.com/auth/login'
    And request { username: 'emilys', password: 'emilyspass', expiresInMins: 30}
    When method post

    * def myval = 'Bearer ' +  response.accessToken