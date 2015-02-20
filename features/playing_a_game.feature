Feature: Playing the game
  In order to play rock paper scissor
  As a member of MAMA
  I want to select a weapon

  Scenario: selecting a weapon and winning
    Given I am on the homepage
    And I enter a name into the form "player_name"
    When I click "submit"
    And I choose a radio button "scissors"
    When I click "submit"
    Then I should be taken to a new page "The result is ........"
