Feature: Playing the game
  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Scenario: Play a move and get a response
    Given I am on the homepage
    When I fill in "name" with "Daniel"
    When I press "Let's go!"
    Given the other player plays "Paper" next
    When I press "Rock"
    Then I should see "You lost this round!"
