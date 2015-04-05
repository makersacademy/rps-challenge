Feature: Play a game of RPS and get the outcome
          In order to win a game
          As a player
          I want to be able to select a move

Scenario: I select a move to make
          Given I am on the homepage
          When I enter "Rob" and click "Play"
          When I select "rock" and click "Play"
          Then I should see "beats"