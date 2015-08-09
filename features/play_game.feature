Feature: Playing game
  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Scenario: Playing game
  	Given I am on welcome
  	Then I press New Game
  	I should see "Your choice"