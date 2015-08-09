Feature: Playing the game
  So that I can see my name in lights
  As a marketeer
  I would like to register my name before playing an online game

  Scenario: Registering
    Given I am on the homepage
    When I press "START GAME"
    Then I should see "WEAPON SELECTION!"

  Scenario: choosing a weapon
    Given I am on the weapon page
    And a game type has been chosen
    When I press "BATTLE!"
    Then I should see "RESULTS TIME!"
