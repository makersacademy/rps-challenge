Feature: Play a game of RPS and get the outcome
          In order to win a game
          As a player
          I want to be able to select a move

Scenario: I select a move to make move to play
          Given I am on the homepage
          When I enter "Rob" and click "Play"
          When I select a "move" and click "Play"
          Then I should see "Rock Paper Scissors Results"

Scenario: I want to be able to play again
          Given I am on the homepage
          When I enter "Rob" and click "Play"
          When I select a "move" and click "Play"
          Then I should see "Rock Paper Scissors Results"
          When I click the "Play Again" button
          Then I should see "Welcome to 'Rock Paper Scissors' Rob"
          When I select a "move" and click "Play"
          Then I should see "Rock Paper Scissors Results"