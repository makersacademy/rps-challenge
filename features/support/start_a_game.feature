Feature: Starting the game
  In order to play RPS
  As a person with at least one hand
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    And I enter the "Name" page
    Then I should be able to enter my name

  Scenario: No Name
    Given I am on the "Name" page
    When I don't enter my name
    Then I see "please enter your name"