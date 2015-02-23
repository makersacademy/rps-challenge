Feature: Starting the game
  In order to play RPSLS
  As a geek
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I click on "New Game"
    Then I should see "Enter your name:"
    When I enter the name "John" in the "name" field
    And I click on "Submit"
    Then I should see "Game on John!"