Feature: register_name
  In order to see my name in lights
  As a marketeer
  I want to register my name before playing an online game

  Scenario: a player enters their name
    Given a player is on the "/" page
    Then they see "Enter your name:"
    When they fill in "Mark" as the "name"
    And they press the "Start" button
    Then they see "Hello Mark! Want to play ‘Rock, Paper, Scissors, Lizard, Spock’?"

  Scenario: a player enters their name incorrectly
    Given a player is on the "/" page
    When they fill in "Wrong" as the "name"
    And they press the "Start" button
    Then they see "Hello Wrong! Want to play ‘Rock, Paper, Scissors, Lizard, Spock’?"
    And they press the "No, change my name!" button
    Then they see "Enter your name:"
