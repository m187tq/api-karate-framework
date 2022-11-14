Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'http://localhost:9191'

  Scenario: To get the data in JSON format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response ==
      """
      [
      {
        "jobId": 1,
        "jobTitle": "Software Engg",
        "jobDescription": "To develop andriod application",
        "experience": [
            "Google",
            "Apple",
            "Mobile Iron"
        ],
        "project": [
            {
                "projectName": "Movie App",
                "technology": [
                    "Kotlin",
                    "SQL Lite",
                    "Gradle"
                ]
            }
        ]
      }
      ]
      """
    And match response contains deep {"jobId": 1}
    And match response.[*].jobId contains 1
    And match response contains deep {"jobDescription": "To develop andriod application"}
    And match response contains deep {"project":[{"projectName": "Movie App"}]}
    And match header Content-Type == 'application/json'
    And match header Connection == 'keep-alive'
