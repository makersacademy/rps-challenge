Feature: Starting the game
  In order to play Rock, Paper, Scissors
  As a nostalgic player
  I want to start a new game

  Scenario: starting game
    Given I am on the homepage
    When I follow "Prepared to die?"
    Then i should see "What's your name?"

  Scenario: registering
    Given I am on the player page
    When I enter "My name"
    Then I should see the arena

  Scenario: choosing a weapon
    Given I am on the arena page
    When I type "Weapon"
    Then I should see the result