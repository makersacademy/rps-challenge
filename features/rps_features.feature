Feature: Starting the game
  In order to play rock, paper, scissors
  As a player
  I want to start a new game

  Scenario: Signing in
    Given I am on the homepage
    When I press "New Game"
    Then I should be on "/SignIn"
    Then I should see "What's your name?"
