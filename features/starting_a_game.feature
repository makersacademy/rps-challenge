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

  Scenario: Playing a game
    Given I am on the namepage
    When I fill in "name" with "Sivan"
    And I press "Submit"
    Then I should see "Hello Sivan, lets play Rock, Paper, Scissors!"
    When I press "Single Player"
    Then I should see "Rock Paper Scissors"

  Scenario: Winning a game
    Given I am on the namepage
    When I fill in "name" with "Sivan"
    And I press "Submit"
    Then I press "Single Player"
    Then I press "Play"
    Then I should see "wins"
