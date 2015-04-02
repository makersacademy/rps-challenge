Feature: As a marketeer
         So that I can see my name in lights
         I would like to register my name before playing an online game

  Scenario: Register Name
    Given I am on the homepage
    And I fill in my name as "Arfah"
    When I click submit
    Then I should see "Welcome Arfah!"

  Scenario: Register Different Name
    Given I am on the homepage
    And I fill in my name as "Sam"
    When I click submit
    Then I should see "Welcome Sam!"