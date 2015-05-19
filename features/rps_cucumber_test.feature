Feature: Playing the game
  In order to play rps
  As a bored office worker
  I want to start a "New Game"

Scenario: Signing in
  Given I am on the homepage
  When I click on "New Game"
  Then I should see "What's your name?"

  Scenario: Entering the game
  Given I am on the register page
  When I click "Submit"
  Then I should see "Rock","Paper" and "Scissors"

  Scenario: Playing the game
  Given I am on the game page
  When I select "Rock"
  Then the page will display "wins"

  