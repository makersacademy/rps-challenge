Feature: play_game
  In order to enjoy myself away from the daily grind
  As a marketeer
  I want to be able to play rock/paper/scissors

  Background:
    Given a user is on the "/" page
    Then they see "Enter your name:"
    When they fill in "Mark" as the "name"
    And they press the "Start" button

  Scenario: a user starts the game
    Then they press the "Yes please!" button
    Then they see "Right, Mark; select an action:"

  Scenario: a user selects ‘Rock’
    Then they press the "Yes please!" button
    Then they press the "Rock" button
    Then they see "You chose ‘Rock’!"

  Scenario: a user selects ‘Paper’
    Then they press the "Yes please!" button
    Then they press the "Paper" button
    Then they see "You chose ‘Paper’!"

  Scenario: a user selects ‘Scissors’
    Then they press the "Yes please!" button
    Then they press the "Scissors" button
    Then they see "You chose ‘Scissors’!"

  Scenario: a user selects ‘Lizard’
    Then they press the "Yes please!" button
    Then they press the "Lizard" button
    Then they see "You chose ‘Lizard’!"

  Scenario: a user selects ‘Spock’
    Then they press the "Yes please!" button
    Then they press the "Spock" button
    Then they see "You chose ‘Spock’!"
