Feature: Starting the game
  So that I can see my name in lights
  As a marketeer
  I would like to register my name before playing an online game

  Scenario: Registering
    Given I am on the homepage
    When I press "Submit"
    Then I should see "Choose your weapon, Fred!"
