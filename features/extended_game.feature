Feature: Starting the game
  In order to play Rock Paper Scissors Lizard Spock
  As a player
  I want to start a new game

  Scenario: Registering for extended game
    Given I am on the homepage
    When I enter my name, "Daryl"
    And I click on "Go!"
    Then I should see "Welcome"
    When I click on "Try this"
    Then I should see "Make your selection for extended game"