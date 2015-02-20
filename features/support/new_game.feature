Feature: Starting the game
  In order to play rock, paper, scissors
  As a geeky player
  I want to start a new game

  Scenario: starting game
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"