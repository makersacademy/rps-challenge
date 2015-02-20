Feature: Starting a New Game
  In order to Play Rock Paper Scissors
  As a Internet User
  I Want to start a game

  Scenario: Starting Fresh
    Given I am on the home page
    When I click 'New Game'
    Then I should see "Your name please?"

  Scenario: Getting player name
    Given I have started a new game
    When I enter my name
    Then I Player 1s name should be "Erik"
