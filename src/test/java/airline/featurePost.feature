Feature: Test POST /products endpoint on fakestoreapi.com

  Background:
    * url 'https://fakestoreapi.com'
    * path 'products'
    * configure headers = { 'Content-Type': 'application/json' }


  Scenario: Missing required field "title"
    * def payload =
      """
      {
        "id": 13,
        "price": 0.1,
        "title" : "",
        "description": "Missing title",
        "category": "electronics",
        "image": "http://example.com"
      }
      """


    And request payload
    And print payload
    When method post
    Then status 200
    And print response



