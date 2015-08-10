Feature: Starting the game
  In order to start the game
  As a player
  I want to choose which version to play

  Scenario: Choosing single player
  Given that I am on the homepage
  When I fill in "player_name" with "Rebecca"
  And I click "Submit"
  When I click "Single Player"
  Then I should see "Rebecca make your choice!"

  Scenario: Choosing two player
  Given that I am on the homepage
  When I fill in "player_name" with "Rebecca"
  And I click "Submit"
  When I click "Two Players"
  Then I should see "Waiting for Player Two."