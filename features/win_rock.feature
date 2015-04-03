Feature: Play rock-paper-scissors
  In order to enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock against scissors

  Background:
    Given I am on the home page
    When I enter "Joseph the Wondrous" in the "name" field
    When the computer chooses "scissors"
    And I press the "Start Game" button

  Scenario: Win with rock
    And I press the "Rock" button
    Then I see "You Win!"