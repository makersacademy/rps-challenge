Feature: After a game
  In order to play again Rock Paper Scissors
  As a player that has just played
  I want to gain quick access to a new game
    
  Background:
    Given I am on the homepage
    And I fill in "name" with "Bob"
    And I press "classic"
    And I choose "paper"
    And I press "cpu"

  Scenario: After a game has been played I want to play a classic game
    Given I should be on the play page
    When I follow "Play Rock Paper Scissors!"
    Then I should be on the choose page for classic game

  Scenario: After a game has been played I want to play a lizard/spock game
    Given I should be on the play page
    When I follow "Play Rock Paper Scissors Lizard Spock!"
    Then I should be on the choose page for lizard/spock game

  Scenario: After a game has been played I want to go back to homepage
    Given I should be on the play page
    When I follow "Back to Home"
    Then I should be on the homepage
