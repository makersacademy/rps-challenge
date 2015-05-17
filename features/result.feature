Feature: Finding out who won
  In order to finish the game
  As a player
  I want to see who won the game

  Scenario: Seeing the result
    Given I am on the game page
    When I select "Rock"
    And I click on "Choose"
    Then I should see the result of the game