Feature: Register
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

Scenario: Create a player
  Given I am on the homepage
  And I enter my name
  When I press "start"
  Then I should see "Hello, Raph"

