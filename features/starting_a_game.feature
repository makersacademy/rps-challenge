Feature: Starting the game
  In order to play Rock, Paper, Scissors
  Seeing as I love to play
  I want to start a new game

  Scenario: Visiting the Homepage
    Given I am on the homepage
    When I fill in "Name" with "Kev"
    And click on "Start Game!"
    Then I should see "Welcome Kev, please choose your weapon!"
