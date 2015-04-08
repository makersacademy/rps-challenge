Feature: Starting the game
  In order to play paper rock scissors
  As a competitive player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I expect to see "What is your name?"
