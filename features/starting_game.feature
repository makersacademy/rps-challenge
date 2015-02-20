Feature: Starting the game
  In order to play rockpaperscissors
  As a nostaligic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Enter First Players Name"
