Feature: Play rock-paper-scissors
  In order to enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock/paper/scissors

  Background:
    Given I am on the home page
    When I enter "Joseph the Wondrous" in the "name" field
    And I press the "Start Game" button

  Scenario: Clicks on rock
    When I press the "Rock" button
    Then I see "You Win!"

  Scenario: Clicks on paper
    When I press the "Paper" button
    Then I see "You Win!"

  Scenario: Clicks on scissors
    When I press the "Scissors" button
    Then I see "You Win!"