Feature: Starting the game
  In order to Rock paper scissors
  As a marketeer 
  I want to start a new game

Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "Enter your name"
