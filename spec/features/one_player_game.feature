Feature: As a player, I want to be able to play r-p-s against the computer.

  Scenario: One player 
  Given I have started a one player game
  And I enter my name "Julian"
  And I submit the form
  And I choose rock and the computer chooses scissors
  Then I should see "Congratulations"

  Given I have started a one player game
  And I enter my name "Julian"
  And I submit the form
  And I choose paper and the computer chooses scissors
  Then I should see "Unlucky"

  Given I have started a one player game
  And I enter my name "Julian"
  And I submit the form
  And I choose scissors and the computer chooses scissors
  Then I should see "draw"