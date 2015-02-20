Feature: Start game
  As a new player of rps
  I want to create myself as a player
  So I can play the game

  Scenario: Go to new player page
    Given I am on the homepage
    When I follow "New Game"
    Then I will see "Enter in new player"

  Scenario: Successfully creating a new player
    Given I am on the "new_player" page
    When I enter "Player" as "Maverick"
    And press the "Submit" button
    Then I will see "Begin game"

  Scenario: Empty player entered
    Given I am on the "new_player" page
    When I enter "Player" as ""
    And press the "Submit" button
    Then I will see "you must enter a player"