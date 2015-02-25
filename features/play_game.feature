Feature: Playing the game
  In order to play Rock, Paper, Scissors
  As a player
  I want to choose a weapon

  Scenario: Playing against a computer opponent
    Given I am on the Play page
    When I choose a weapon
    Then I should see the results page