Feature: starting a game
  In order to play RockPaperScissors
  As a player
  I want to start a new game

  Scenario: Going to a new page
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Entering my name
    Given I am on the namepage
    When I fill in "name" with "Sivan"
    And I press "Submit"
    Then I should see "Hello Sivan, lets play Rock, Paper, Scissors!"
