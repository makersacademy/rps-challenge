Feature: Can play Rock, Paper, Scissors once registered!
  So that i can enjoy myself between posting facebook ads
  As a marketeer
  I would like to be able to play rock paper scissors

  Scenario: I can play against a random AI
    Given I visit the homepage
    And I register as "Dan"
    When I click a photo of a "rock"
    Then I should see who won
    And I should what the computer picked


