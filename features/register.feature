Feature: Register
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

Scenario: Set name
  Given I am on the homepage
  When I fill in "name"
  Then I press "Start"
  Then I should be on "/game"