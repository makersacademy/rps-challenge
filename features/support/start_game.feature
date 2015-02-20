Feature: Starting the game
  In order to play RPS
  As a student of MA
  I want to start a new game

  Scenario: Starting game
    Given I'm on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"