Feature: Playing the game
  In order to play RPS
  As a nostalgic player
  I want to win!

  Scenario: Registering
    Given I have started the game
    When I choose the answer
    And then Player 2 picks an answer
    Then I should either win or lose