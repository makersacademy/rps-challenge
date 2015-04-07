Feature: Starting the game
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

Scenario: Registering
  Given I am on the homepage
  When I submit a name
  And I press "Start Game!"
  Then I should be asked to choose a weapon
