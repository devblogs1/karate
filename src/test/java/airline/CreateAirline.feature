Feature: Create Product
 
  Scenario: Make a POST request to Create product

    * def idx = 10
    * def payload = {"id":<foo>,"title":"string","price":0.1,"description":"string","category":"string","image":"http:\/\/example.com"}
    * replace payload.foo = idx

    Given url 'https://fakestoreapi.com/products'

    And request payload
    And print payload
    When method post
    Then status 200
    And print responseStatus
    And print response
    And match $.id == 21

  Scenario: POST API Call
    * def idx1 = 101
    * def payload1 = {"id":<foo>,"title":"string","price":0.1,"description":"string","category":"string","image":"http:\/\/example.com"}
    * replace payload1.foo = idx1

    Given url 'https://fakestoreapi.com/products'
    And request payload1
    When method post
    And print responseStatus
    And print response.id
    Then status 200


 
   

  Scenario: call me api using auth token 
 
    * def result = call read('GenerateToken.feature')
    * print result.myval 
        Given url 'https://dummyjson.com/auth/me'
        And header Authorization  = result.myval 
        When method GET
    And print response
        


 

