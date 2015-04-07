Feature: play_game
  In order to enjoy myself away from the daily grind
  As a marketeer
  I want to be able to play rock/paper/scissors

  Background:
    Given a player is on the "/" page
    Then they see "Enter your name:"
    When they fill in "Mark" as the "name"
    And they press the "Start" button

  Scenario: a player starts the game
    Then they press the "Yes please!" button
    Then they see "Right, Mark; select an action:"

  Scenario: a player selects ‘Rock’
    Then they press the "Yes please!" button
    Then they press the "Rock" button
    Then they see "You chose ‘Rock’!"

  Scenario: a player selects ‘Paper’
    Then they press the "Yes please!" button
    Then they press the "Paper" button
    Then they see "You chose ‘Paper’!"

  Scenario: a player selects ‘Scissors’
    Then they press the "Yes please!" button
    Then they press the "Scissors" button
    Then they see "You chose ‘Scissors’!"

  Scenario: a player selects ‘Lizard’
    Then they press the "Yes please!" button
    Then they press the "Lizard" button
    Then they see "You chose ‘Lizard’!"

  Scenario: a player selects ‘Spock’
    Then they press the "Yes please!" button
    Then they press the "Spock" button
    Then they see "You chose ‘Spock’!"

  Scenario: a player wins
    Then they press the "Yes please!" button
    Then they press the "Rock" button
    Then they see "You chose ‘Rock’!"
    And they see AI chose "‘Scissors’!"
    And they see 'Congratulations: you won!'

  Scenario: a player draws
    Then they press the "Yes please!" button
    Then they press the "Rock" button
    Then they see "You chose ‘Rock’!"
    And they see AI chose "‘Rock’!"
    And they see 'Well done, I guess: you drew!'

  Scenario: a player loses
    Then they press the "Yes please!" button
    Then they press the "Rock" button
    Then they see "You chose ‘Rock’!"
    And they see AI chose "‘Spock’!"
    And they see 'Commiserations: you lost!'

  Scenario: a player wants to play again
    Then they press the "Yes please!" button
    Then they press the "Rock" button
    Then they press the "Play again" button
    Then they see "Right, Mark; select an action:"
    
