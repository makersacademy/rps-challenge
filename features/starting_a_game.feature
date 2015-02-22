Feature: Starting the game
  In order to play RPSLS
  As a geek
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I click on "New Game"
    Then I should see "Enter your name:"