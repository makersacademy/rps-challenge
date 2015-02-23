Feature: Start game
  As a new player of rps
  I want to create myself as a player
  So I can play the game

  Scenario: Go to new player page
    Given I am on the homepage
    When I follow "Click To Begin"
    Then I will see "Enter players name"

  Scenario: Successfully creating a new player
    Given I am on the "new_player" page
    When I enter "player" as "Maverick"
    And press the "Submit" button
    Then I will see "Begin game"

  Scenario: Empty player entered
    Given I am on the "new_player" page
    When I enter "player" as ""
    And press the "Submit" button
    Then I will see "You Must Enter Your Name"

  Scenario: Start game with players name showing
    Given I am on the "new_player" page
    When I enter "player" as "Maverick"
    And press the "Submit" button
    Then I will see "Maverick"

  Scenario: Choose a weapon
    Given I am on the "new_player" page
    And sign in as "Maverick"
    When I press on "Rock" as my weapon choice
    Then I will see a result

  Scenario: New Player
    Given I am on the "new_player" page
    And sign in as "Maverick"
    When I press "New Player"
    Then I will be back on the homepage

  Scenario: 2 player game option
    Given I am on the homepage
    When I follow "2Player"
    Then I will see "2 Player Game"

  Scenario: Enter in 2 player
    Given I am on the 2 player page
    When I enter "Player1" called "Jim"
    And I enter "Player2" called "Bill"
    Then I will see "Jim"
    And I will see "Bill"




