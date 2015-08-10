

Feature: Playing the game
  In order to play the game
  As a user
  I want to make my choice

  Scenario: Making your choice
  Given that I am on the one_player_game page
  When I click "rock"
  Then I should see "You chose rock"

  Scenario: Making your choice
  Given that I am on the one_player_game page
  When I click "rock"
  And I click "Play Again?"
  Then I should see "Single Player Game"