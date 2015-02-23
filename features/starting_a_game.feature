Feature: Starting the game
  In order to play Rock Paper Scissors
  As a maker
  I want to start a new game

 Scenario: Registering 
    Given I am on the homepage
    And I type a "name"
    When I click on "submit"
    Then I should see "Welcome"

 Scenario: No name given
 	Given I am on the player page
 	And I don't type a "name"
 	When I click on "submit"
 	Then I should see "You MUST enter a name!"