Feature: Starting a game
  In order to play rock paper scissors
  As a bored student at Makers
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I enter my name as "Jack"
    And I click the "Start Game" button
    Then I should see "Welcome Jack"

  Scenario: Starting a new game
    Given I am on the New Game page
