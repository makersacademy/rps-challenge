Feature: Starting the game
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  Scenario: Registering
    Given I am on the homepage
    When I fill in "name" with "Gaby"
    When I press "Submit"
    Then I should see "Gaby"