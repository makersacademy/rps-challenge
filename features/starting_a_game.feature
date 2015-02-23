Feature: Starting the game
  In order to play Rock Paper Scissors
  As a bored marketeer
  I want to start a new game
  
  Scenario: Starting a game
  Given I am on the homepage
  And I enter a name into the form
  When I press submit
  Then I should be taken to the game

  Scenario: No input into form
  Given I am on the homepage
  And I do not enter a name into the form
  When I press submit
  Then I should stay on the homepage