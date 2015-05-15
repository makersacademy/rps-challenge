Feature: Starting the game
  In order to play Rock Paper Scissors
  As a player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    Then I should see "Rock Paper Scissors Challenge, by Daryl Watson"
    When I click on "Click here"
    Then I should see "Enter name"

  Scenario: Entering a name
    Given I am on the name entry page
    When I enter my name, "Daryl"
    And I click on "Go!"
    Then I should see "Let's play!"
    When I click on "Let's play!"
    Then I should see "Make your selection:   "