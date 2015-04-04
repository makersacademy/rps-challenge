Feature: Registering for the game
  As a marketeer
  So that I can see my name in lights
  I would like to register before starting the game

  Scenario: On the homepage
    Given I am on the homepage
    When I enter 'James' in 'Name'
    And I click 'Start game'
    Then I should see 'Hello, James'