Feature: Playing the game
  As a player of the game
  So that I can make some arbitrary decision
  I would like to be able to play RPS

  Scenario: Single-player game
    Given I have registered as before
    When I select 'Rock'
    And my opponent selects 'Scissors'
    Then I should see 'James wins!'