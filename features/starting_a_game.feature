Feature: Starting a New Game
  In order to Play Rock Paper Scissors
  As a Internet User
  I Want to start a game

  Scenario: Starting Fresh
    Given I am on the home page
    When I click 'New Game'
    Then I should see "Your name please?"

  Scenario: Starting a game against the Computer
    Given I have clicked new game
    When I enter my name "Erik"
    Then the page should show "Waiting for another player to join..."
    And offer a link to "Play Computer"
