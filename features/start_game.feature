Feature: Starting the game
  In order to play Rock, Paper, Scissors
  As a MAMA game player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I submit a name
    And I press "Start Game!"
    Then I should be prompted to choose a weapon

  Scenario: No Name Entered
    Given I am on the homepage
    When I do not submit a name
    And I press "Start Game!"
    Then I should be redirected to the no_name page

  Scenario: Returning to the homepage
    Given I am on the no_name page
    When I press "Go Back"
    Then I should be redirected to the homepage

