Feature: Play Rock Paper Scisors
  In order to play RPS
  As a Makers Academy marketeer
  I can choose between "Rock", "Paper" and "Scisor"


  Scenario: Making a turn
    Given I have registered and see the options
    When I choose a weapon
    Then the opponent chooses a weapon
    And I know if I have won or lost

  Scenario: I should see my score
    Given I have made a turn
    When I know if I have won or lost
    Then I should see my score

  Scenario: Declaring the winner
    Given the players have taken three turns each
    When one player has a higher score
    Then he should know that he is the winner