Feature: Playing again
  Once the game is complete
  As a player
  I want to play again

  Scenario: Computer choice
    Given I am on the result page
    When I click on "Play again"
    Then I should see "Welcome"
