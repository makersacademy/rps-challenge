Feature: Starting the game
  In order to play Rock, Paper, Scissors
  As an office worker seeking distraction
  I want to start a new game

  Scenario: Initializing
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Enter your name:-"

  Scenario: Selecting number of players (1)
    Given I am on the register page
    Then I should see "Enter your name"
    When I fill in name with "Andy"
    When I fill in rounds with "6"
    And I click "submit"
    Then I should see "Hello, Andy!"
    Then I should see "6 rounds"

  Scenario: Playing a game
    Given I am on the register page
    When I fill in name with "Andy"
    When I fill in rounds with "6"
    And I click "submit"
    When I follow "Play!"
    Then I should see "Select rock, paper or scissors"