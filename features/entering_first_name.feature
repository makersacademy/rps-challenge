Feature: Starting the game
  In order to play rock paper scissors
  I have entered my name
  I want to start playing a game

  Scenario: Registering
    Given I am on the enter name page
    When I enter my "name"
    Then I should go to the "new game" page