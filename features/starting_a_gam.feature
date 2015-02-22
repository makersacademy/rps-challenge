Feature: Starting the game
  In order to play battleships
  As a nostlagic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I click "New Game"
    Then I should see "Please enter a name for Player 1"