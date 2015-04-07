Feature: Starting the game
  In order to play rock paper scissors
  As a user
  I want to create a new player

  Scenario: User is on the homepage
    Given a user is on the homepage
    Then they should see "Enter your player name"

  Scenario: They create a new player
    Given a user is on the homepage
    When they fill in "Jade" in the new_player field
    And they press the "Create Player" button
    Then they should see "Welcome Jade, lets play"

  Scenario: Player chooses move
    Given a user is on the game page
    When they choose a move radio button
    And they press the "Go" button
    Then they see "Rock"
