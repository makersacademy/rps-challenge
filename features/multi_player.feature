Feature: Two people can play a game from separate browser on same host
          In order to win a game
          As players
          We want to be able to select a move

Scenario: Two Players can play 1 round
          When I am in "Dave" browser
          Given I am on the homepage
          When I enter "Dave", select "multi" and click "Play"
          When I select a "move" and click "Play"
          Then I should see "Waiting for another player to make a move"

          When I am in "Sarah" browser
          Given I am on the homepage
          When I enter "Sarah", select "multi" and click "Play"
          When I select a "move" and click "Play"
          Then I should see "Rock Paper Scissors Results"

          When I am in "Dave" browser
          Given I click the "Try Again" button
          Then I should see "Rock Paper Scissors Results"

Scenario: Two Players can play multiple rounds
          When I am in "Dave" browser
          Given I am on the homepage
          When I enter "Dave", select "multi" and click "Play"
          When I select a "move" and click "Play"
          Then I should see "Waiting for another player to make a move"

          When I am in "Sarah" browser
          Given I am on the homepage
          When I enter "Sarah", select "multi" and click "Play"
          When I select a "move" and click "Play"
          Then I should see "Rock Paper Scissors Results"

          When I am in "Dave" browser
          Given I click the "Try Again" button
          Then I should see "Rock Paper Scissors Results"
          When I click the "Play Again" button

          When I am in "Sarah" browser
          When I click the "Play Again" button
          When I select a "move" and click "Play"
          Then I should see "Waiting for another player to make a move"

          When I am in "Dave" browser
          When I select a "move" and click "Play"
          Then I should see "Rock Paper Scissors Results"
