Feature: Starting the game
  In order to start the game
  As a player
  I want to choose which version to play

  Scenario: Choosing single player
  Given that I am on the homepage
  When I fill in "player_name" with "Rebecca"
  And I click "Submit"
  When I click "Single Player"
  Then I should see "Single Player Game"