Feature: Starting the game
  In order to play rock paper scissor
  As a member of MAMA
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I enter a name into the form "player_name"
    When I click "submit"
    Then I should be taken to a new page "Please make a selection"

  Scenario: No name entered
    Given I am on the homepage
    And I do not enter a name into the form "player_name"
    When I click "submit"
    Then I should stay on the home page and see "Welcome to Rock Paper Scissors"MAM
