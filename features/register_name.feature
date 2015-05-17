Feature: Registering your name
  So that I can see my name in lights
  As a marketeer
  I would like to register my name before playing an online game

Scenario: Putting the name in the form
  Given I am on the homepage
  Then I should see "What's your name?"
  When I fill in "name" with "Dan"
  And I press "Play"
  Then I should be on the game page
  And I should see "choose your weapon!"