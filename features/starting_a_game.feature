Feature: Starting the game
  In order to play Rock, Paper, Scissors
  I want to start a new game

  Scenario: Registering Your Name
    Given I am on the homepage
    When I click "New Game"
    Then I should see "Please enter your name:"
    When I enter the name "Kev" in "Name"
    Then I should see "Welcome Kev!"
