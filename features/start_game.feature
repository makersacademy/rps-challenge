Feature: Starting the game
  In order to play Rock Paper Scissors
  As a player
  I want to start a new game

  Scenario: Registering for regular game
    Given I am on the homepage
    Then I should see "Rock Paper Scissors Challenge by Daryl Watson"
    When I enter my name, "Daryl"
    And I click on "Go!"
    Then I should see "Welcome"

  Scenario: Accepting a name
    Given I am on the homepage
    When I don't enter anything
    And I click on "Go!"
    Then I should see "Start by entering your name"