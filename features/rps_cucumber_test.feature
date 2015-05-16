Feature: Starting the game
  In order to play rps
  As a bored office worker
  I want to start a "New Game"

  Scenario: Signing in
    Given I am on the homepage "/"
    When I click "New Game"
    Then I should see "What's your name?"
    When I enter "Rocco"
    When I hit "Submit"
    Then I see "Hello Rocco" and "Play Game"

  Scenario: I start playing a game vs the computer
    Given I've submitted my name
    When I click "Play Game"
    When I select "Rock"
    Then I should see a"result"




