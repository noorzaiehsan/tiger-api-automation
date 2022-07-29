
Feature: Generate Token with valid username and password
Given url "https://tek-insurance-api.azurewebsites.net"
And path "/api/token"
And request {"username": "supervisor", "password": "tek_supervisor"}
When method post
Then status 200
And def generatedToken = response.token
And print generatedToken

Feature: Generate Token with invalid username and password
Given url "https://tek-insurance-api.azurewebsites.net"
And path "/api/token"
And request {"username": "admin", "password": "tek_supervisor"}
When method post
Then status 200
And def generatedToken = response.token
And print generatedToken