Feature: Playing a Game
  In order to have fun
  As an incredibly bored person
  I want to play Rock Paper Scissors

Scenario: Playing the Computer
  Given I have entered my name
  When I click "Play Computer"
  Then I should have the Options of "Rock", "Paper", or "Scissors"