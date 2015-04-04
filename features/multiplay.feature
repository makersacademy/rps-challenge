Feature: Play multiplayer rock-paper-scissors
  In order to enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock/paper/scissors with someone else

  Background:
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button

  Scenario: Both see own names
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field
    And I press the "Multiplayer Game" button
    Then I see "Shiela the Person" in Shiela's browser
    And I see "Bob the Subservient" in Bob's browser

  Scenario: First goes to waiting page
    Then I see "No other player" in Bob's browser
    And I see a "Check again" button

  Scenario: First person's game start when new player arrives
    When I press the "Check again" button in Bob's browser
    Then I see "No other player" in Bob's browser
    When I press the "Check again" button
    Then I see a "Rock" button

  Scenario: Win with rock
    When the computer chooses "scissors"
    And I press the "Rock" button in Shiela's browser
    Then I see "You Win!"

  Scenario: Lose with Spock
    When the computer chooses "paper"
    And I press the "Spock" button in Bob's browser
    Then I see "You Lose!"
