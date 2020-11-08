Feature:
  In order to be register on the website
  As a User
  I want to register my self

  @read-only
  Scenario: As a User I want to see the register page
    Given I go to "/register"
    Then the response status code should be 200
    And the response should contain "Me connecter"

  @javascript
  Scenario: As a User I want to see the register page and register my self
    Given I go to "/register"
    When I fill in "user[email]" with "user-test@recette-day.docker"
    And I fill in "user[password][first]" with "root"
    And I fill in "user[password][second]" with "root"
    When I press "user[submit]"
    Then the response should contain "Me connecter"

  @javascript @error
  Scenario: As a User I want to see the register page and register my self
    Given I go to "/register"
    When I fill in "user[email]" with "user-test@recette-day.docker"
    And I fill in "user[password][first]" with "root"
    And I fill in "user[password][second]" with "root1"
    When I press "user[submit]"
    Then the response should contain "Cette valeur n'est pas valide."

  @javascript @error
  Scenario: As a User I want to see the register page and register my self
    Given I go to "/register"
    When I fill in "user[email]" with "user@recette-day.docker"
    And I fill in "user[password][first]" with "root"
    And I fill in "user[password][second]" with "root1"
    When I press "user[submit]"
    Then the response should contain "Cette valeur est déjà utilisée."