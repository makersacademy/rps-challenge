Feature: Playing the game
  So that I can enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock/paper/scissors

  Scenario: Playing a move
    Given I am on the new game page
    Then I should see "CHOOSE YOUR WEAPON!"
    And I press "ROCK"
    Then I should see "You win!"