Feature: play_game
  In order to enjoy myself away from the daily grind
  As a marketeer
  I want to be able to play rock/paper/scissors

  Background:
    Given a user is on the "/" page
    Then they see "Enter your name:"
    And they press the "Start" button

  Scenario: a user starts the game
    And they press the "Yes please!" button
    Then they see "Select one of ‘Rock, Paper, Scissors, Lizard, Spock’:"
