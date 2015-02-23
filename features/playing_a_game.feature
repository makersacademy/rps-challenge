Feature: Playing the game
  In order to play rock paper scissor
  As a member of MAMA
  I want to select a weapon

  Scenario: Selecting a weapon and winning
    Given I am on the homepage
    And I enter a name into the form "player_name"
    When I click "submit"
    And I choose a radio button "scissors"
    When I click "Fight!"
    Then I should be taken to a new page "The result is ........"

  Scenario: Playing another game
    Given I am on the result page
    When I click "Yes Please!"
    Then I should be taken to a new page "Please make a selection"

  Scenario: No weapon selected
    Given I am on the homepage
    And I enter a name into the form "player_name"
    When I click "submit"
    And I do not choose a radio button
    When I click "Fight!"
    Then I should be taken to a new page "Please make a selection"