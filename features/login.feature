Feature:
  In order to be authenticated on the website
  As a User
  I want to authenticate my self

  @read-only
  Scenario: As a User I want to see the login page
    Given I go to "/login"
    Then the response status code should be 200
    And the response should contain "Me connecter"

  @javascript
  Scenario: As a User I want to see the login page
    Given I go to "/login"
    When I fill in "email" with "user@recette-day.docker"
    And I fill in "password" with "root"
    When I press "submit"
    Then the response should contain "Bienvenue sur le squelette!"

  @javascript
  Scenario: As a User I want to go to register page
    Given I go to "/login"
    When I follow "S'inscrire"
    Then the response should contain "Créer mon compte"