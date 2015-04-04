Feature: Play multiplayer rock-paper-scissors
  In order to enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock/paper/scissors with someone else

  Scenario: Both see own names
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    Then I see "Shiela the Person" in Shiela's browser
    And I see "Bob the Subservient" in Bob's browser

  Scenario: First goes to waiting page
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    Then I see "Waiting for other player" in Bob's browser
    And I see a "Check again" button in Bob's browser
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser

  Scenario: First person's game start when new player arrives
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    When I press the "Check again" button in Bob's browser
    Then I see "Waiting for other player" in Bob's browser
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    When I press the "Check again" button in Bob's browser
    Then I see a "rock" button in Bob's browser

  Scenario: Win with rock
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    When I press the "Check again" button in Shiela's browser
    And I press the "Lizard" button in Shiela's browser
    And I press the "Rock" button in Bob's browser
    Then I see "You Win!"

  Scenario: Lose with Spock
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    When I press the "Check again" button in Shiela's browser
    And I press the "Paper" button in Shiela's browser
    And I press the "Spock" button in Bob's browser
    Then I see "You Lose!"

  Scenario: Can check results if they make a move second
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    When I press the "Check again" button in Shiela's browser
    And I press the "Paper" button in Shiela's browser
    And I press the "Spock" button in Bob's browser
    Then I see "You Lose!"
    And I press the "Check again" button in Shiela's browser
    Then I see "You Win!"

  Scenario: See other person's name
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    Then I see "Shiela the Person" in Bob's browser
    When I press the "Check again" button in Shiela's browser
    Then I see "Bob the Subservient" in Shiela's browser
    When I press the "Lizard" button in Shiela's browser
    And I press the "Rock" button in Bob's browser
    Then I see "Shiela the Person" in Bob's browser
    And I see "Bob the Subservient" in Shiela's browser

  Scenario: See a score
    When I am in Shiela's browser
    And I am on the home page
    And I enter "Shiela the Person" in the "name" field in Shiela's browser
    And I press the "Multiplayer Game" button in Shiela's browser
    When I am in Bob's browser
    And I am on the home page
    And I enter "Bob the Subservient" in the "name" field
    And I press the "Multiplayer Game" button
    When I press the "Check again" button in Shiela's browser
    When I press the "Lizard" button in Shiela's browser
    And I press the "Rock" button in Bob's browser
    When I press the "Check again" button in Shiela's browser
    Then I see "You: 0, Bob: 1" in Shiela's browser
    Then I see "You: 1, Shiela:" in Bob's browser

