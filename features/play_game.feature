Feature: Pleasing the MAMA
  In order to unwind after a hard day
  As a fan of games
  I want to register my name and play RPS

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Play Rock-Paper-Scissors!"
    Then I should see "Enter your name"

  Scenario: Entering the game without a name
    Given I am on the homepage
    And I click "Play"
    Then I should be on the Game page
    Then I should see "Welcome"

  Scenario: Entering the game with a name
    Given I am on the homepage
    And I fill in "Name" with "Bob"
    And I click "Play"
    Then I should be on the Game page
    Then I should see "Welcome Bob"

  Scenario: Playing the game
    Given I am on the Game page
    Then I should see "Make your choice"
    Then the page should have "Rock" button
    Then the page should have "Paper" button
    Then the page should have "Scissors" button
