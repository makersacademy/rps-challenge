Feature: Starting the game
  In order to play Rock, Paper, Scissors
  As an office worker seeking distraction
  I want to start a new game

  Scenario: Initializing
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Select number of players"

  Scenario: Selecting number of players (1)
    Given I am on the select number of players page
    When I follow "1 player (vs. CPU)"
    Then I should see "Player 1, enter your name"
    When I fill in p1_name with "Andy"
    When I fill in rounds with "6"
    And I click "submit"
    Then I should see "Hello, Andy!"
    Then I should see "6 rounds"