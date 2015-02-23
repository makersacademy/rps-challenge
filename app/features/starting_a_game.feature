Feature: Starting the game
  In order to play RPS
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Player 1 choose"

 
