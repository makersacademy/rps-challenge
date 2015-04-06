Feature: Starting a Game
  In order to play Scissor, Paper, Stone
  So I can entertain myself as a marketer
  I want to start a new game

    Scenario: Registering Name
      Given I am on the home page
      When I follow "Start Game"
      Then I should see "Please enter your name"

