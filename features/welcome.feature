Feature: Register name
  In order to see my name in lights
  As a marketeer
  I would like to register my name before playing an online game

  Scenario: Enters name into form
    Given I am on the home page
    When I enter "Joseph the Wondrous" in the "name" field
    Then I see "Joseph the Wondrous"
