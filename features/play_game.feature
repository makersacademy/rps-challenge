Feature: Play a game of Rock Paper Scissors
  Scenario: Enter my name
  Given I am on the homepage
  When I fill in "name" with "Jo"
  And I press "submit"
  Then I should see "Jo"
