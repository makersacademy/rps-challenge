Feature: Starting the game
  In order to play Rock, Paper, Scissors
  Seeing as I love to play
  I want to start a new game

  Scenario: Visiting the Homepage
    Given I am on the homepage
    When I fill in "Name" with "Kev"
    And click on "Start Game!"
    Then I should see "Welcome Kev Please choose your weapon!"

  Scenario: Choosing Rock
    Given I have added my name
    When I click on "rock"
    Then I should see "You have chosen rock"

  Scenario: Choosing Paper
    Given I have added my name
    When I click on "paper"
    Then I should see "You have chosen paper"

  Scenario: Choosing Scissors
    Given I have added my name
    When I click on "scissors"
    Then I should see "You have chosen scissors"
