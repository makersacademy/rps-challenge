Feature: Starting the game
  In order to play Rock, Paper, Scissors
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should be taken to the registration page
  And I should see the "What's your name?" field
  And I should see a "Rock" button
  And I should see a "Paper" button
  And I should see a "Scissors" button
