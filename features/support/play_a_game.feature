Feature: Playing the game 
  In order to play RPS
  As a person with at least one hand
  I want to start the one-player gameplay

  Scenario: Choosing a symbol
    Given I am on the choice page
    When I see the radio button selectors
    And I select a radio button
    Then I should be able to submit it

