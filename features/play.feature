Feature: play
  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

Scenario: play against the computer
  Given I am on the "/game" page
  When I choose my element
  Then I press "Play"
  Then I should be on "/result"
