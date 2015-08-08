Feature: Registering for a game
  In order to play RockPaperScissors
  As a player
  I want to be able to register my name

  Scenario: Entering name
  Given that I am on the homepage
  When I fill in "player_name" with "Rebecca"
  And I click "Submit"
  Then I should see "Hi there Rebecca!"