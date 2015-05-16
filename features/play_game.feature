Feature: Playing the game
  In order to play rps
  As a player
  I want to enter my name

Scenario: Playing a game
  Given I am on the homepage
  When I enter the "name" "Bob". 
  When I enter the "tool" "Rock".
  And I click "Submit"
  Then I should be on the "game_page"

 
