Feature: To test the get end point of the application
  To test different get end point with different data format supported by the application

  Background:
    * url 'http://localhost:9191'
    And print '========== This is Background Keyword =========='

  Scenario: To get all the data from application in JSON format
    #Given url 'http://localhost:9191/normal/webapi/all'
    #Base Path + Context path
    Given path '/normal/webapi/all'
    When method get # Send the get request
    #Then status 201 # the status code response should be 200
    Then status 200 # the status code response should be 200

  Scenario: To get all the data from application in JSON format using path variable
    Given path 'normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response

  Scenario: To get all the data from application in XML format using path variable
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get # Send the get request
    Then status 200 # the status code response should be 200