Feature: Enter my name

  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  Scenario: Enter my name and see it on game page

  Given I am on the homepage
  When I fill in "name" with "Rodney"
  And I press "Play"
  Then I should be on the game page
  And I should see "Greetings Professor Rodney."
