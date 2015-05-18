Feature: Enter name and move to the play page with that name showing
          In order to start the game
          As a player
          I want to see my name in lights!

Scenario: I want to enter my name
          Given I am on the homepage
          When I enter "Rob", select "single" and click "Play"
          Then I should see "Make a move Rob"
