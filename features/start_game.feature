Feature: Starting a game with only one player
  In order to play rock paper scissors
  As a bored student at Makers
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I enter my name as "Jack"
    And I click the "Start 1-Player Game" button
    Then I should see "Welcome Jack"

  Scenario: Starting a new game
    Given I am on the new game page
    Then I should see "Choose a hand to play:"
    And I click the "rock" button
    Then I should see "CPU chose: "
