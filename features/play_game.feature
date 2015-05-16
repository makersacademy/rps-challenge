Feature: Play a game

  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Scenario: TIE: Player 1 & CPU both choose paper
    And I seed with 2
    Given I am on the game page
    When I follow "Rock"
    Then I should see "it's a tie, try again!"
