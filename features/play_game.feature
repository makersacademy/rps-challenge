Feature: Registering player for the game
  In order to play the game
  As a player
  I want to type in my name

  Scenario: Registering name
    Given I am on the homepage
    And I input my name
    When I click on "Start"
    Then I should visit game page
    
  Scenario: Playing game
    Given I am on game page
    When I click on rock/paper/scissors image
    Then I should visit cpu page
