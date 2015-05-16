Feature: Play rock-paper-scissors
  In order to enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock/paper/scissors

  Background:
    Given I am on the home page
    When I enter "Joseph the Wondrous" in the "name" field
    And I press the "Solo Game" button

  Scenario: Win with rock
    When the computer chooses "scissors"
    And I press the "Rock" button
    Then I see "You Win!"

  Scenario: Shows what moves were chosen, so why I won
    When the computer chooses "paper"
    And I press the "Scissors" button
    Then I see "Computer took move 'paper', and you played 'scissors'."

  Scenario: Draw with same move
    When the computer chooses "scissors"
    And I press the "Scissors" button
    Then I see "Draw!"

  Scenario: Goes to beginning if I try to get `/game`
    When I am on the "game" page
    Then I see "Solo Game"

  Scenario: Lose with rock
    When the computer chooses "paper"
    And I press the "Rock" button
    Then I see "You Lose!"
