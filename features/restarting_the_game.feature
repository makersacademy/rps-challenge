Feature: The player can start another game
  To continue enjoying myself
  As someone who really enjoyed themselves the first time round
  I want to play another round of Rock, Paper, Scissors

  Background:
    Given I am on the homepage
    And I enter "Tom"
    And I press "submit"
    And I click "Rock"

  Scenario: I can restart the game
    When I click "Click to play again"
    Then I should see "What's your weapon of choice, Tom?"
