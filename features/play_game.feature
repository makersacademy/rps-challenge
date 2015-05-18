Feature: Play a game of Rock Paper Scissors
  Scenario: Enter my name
  Given I am on the homepage
  When I fill in "name" with "Jo"
  And I press "submit"
  Then I should see "Jo"

  Scenario: Starting the game
  Given I am on the homepage
  And I fill in "name" with "Jo"
  And I press "submit"
  When I select "Rock" from "choices"
  And I press "Let's Play!"
  Then I should see "You win"
