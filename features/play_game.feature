Feature: Starting a Game
  In order to play Scissor, Paper, Stone
  So I can entertain myself as a marketer
  I want to start a new game

    Scenario: Registering Name
      Given I am on the home page
      When I follow "Start Game"
      Then I should see "Please enter your name"
      When I fill in the form with "Max"
      And I click "Play"
      Then I should see "Welcome Max"

    Scenario: Starting Game
      Given I am on the New Game page
      

