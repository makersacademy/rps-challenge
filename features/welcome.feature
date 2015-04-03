Feature: Register name
  In order to see my name in lights
  As a marketeer
  I would like to register my name before playing an online game

  Background:
    Given I am on the home page
    When I enter "Joseph the Wondrous" in the "name" field
    And I press the "Start Game" button

  Scenario: Enters name into form sees name
    Then I see "Joseph the Wondrous"

  Scenario: Sees name flashing
    Then I see "Joseph the Wondrous" with class "flashing"
