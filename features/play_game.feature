Feature: Pleasing the Makers Academy Marketeers
  In order to unwind after a hard day
  As a fan of games
  I want to register my name and play RPS

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Play Rock-Paper-Scissors!"
    Then the page should have "Play" button

  Scenario: Enter the game without a name
    Given I am on the homepage
    And I click "Play"
    Then I should be on the Game page

  Scenario: Enter the game with a name
    Given I am on the homepage
    And I fill in "Name" with "Bob"
    And I click "Play"
    Then I should be on the Game page
    Then I should see "Welcome Bob"

  Scenario: Play the game and see your choices
    Given I am on the homepage
    And I click "Play"
    Then I should see "Make your choice"
    Then the page should have "Rock" button
    Then the page should have "Paper" button
    Then the page should have "Scissors" button

  Scenario: Select a choice and get a result
    Given I am on the homepage
    And I fill in "Name" with "Bob"
    And I click "Play"
    Then I should be on the Game page
    Then I should see "Welcome Bob"
    And I click "Rock"
    Then I should see "You win" or "You lose"

  Scenario: See opponent's result
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    Then I should see "your opponent chose"

  Scenario: Get a result and play again
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    Then I should see "Make your choice"
    Then the page should have "Rock" button
    Then the page should have "Paper" button
    Then the page should have "Scissors" button

  Scenario: Return to main menu and change name
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    And I follow link "Homepage"
    And I fill in "Name" with "Sue"
    And I click "Play"
    Then I should be on the Game page
    Then I should see "Welcome Sue"
