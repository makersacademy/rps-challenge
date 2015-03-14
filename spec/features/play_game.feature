Feature: As a player, I want to be able to play r-p-s against the computer.

  Scenario: One player 
  Given I have started a one player game
  And I enter my name "Julian"
  And I choose scissors
  And the computer chooses paper
  Then I should see "Congratulations"
