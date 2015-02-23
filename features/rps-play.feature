Feature: Play Rock Paper Scissors
  In order to play RPS
  As a Makers Academy marketeer
  I can choose between "Rock", "Paper" and "Scissor"


  Scenario: Making a turn
    Given I have registered and see the options
    When I choose a weapon
    Then I should see my score

  Scenario: Declaring the winner
    Given the players have taken three turns each
    When one player has a higher score
    Then he should know that he is the winner