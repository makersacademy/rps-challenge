Feature: Winning the game
  In order to play RPS
  As a person with at least one hand
  I want to see the winner of a game

  Scenario: Choosing a symbol
    Given I am on the choice page
    When both players have selected a symbol
    Then the winner of the game should be declared