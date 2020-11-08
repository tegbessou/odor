Feature: 
  In order to visit the home page
  As a User
  I want to see home page
  
  @read-only
  Scenario: As a User I want to see the home page without javascript
    Given I go to "/"
    Then the response status code should be 200
    And the response should contain "Bienvenue sur le squelette!"

  @javascript
  Scenario: As a User I want to go back on the home page
    Given I go to "/login"
    When I follow "Recette day"
    Then the response should contain "Bienvenue sur le squelette!"

  @javascript
  Scenario: As a User I want to go back on the home page
    Given I go to "/"
    When I follow "Me connecter"
    Then the response should contain "Me connecter"