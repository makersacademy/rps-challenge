Feature: Can play Rock, Paper, Scissors once registered!
  So that i can enjoy myself between posting facebook ads
  As a marketer
  I would like to be able to play rock paper scissors

  Scenario: Can pick rock
    Given I register
    When I click a photo of a "rock"
    Then I should see "Sorry Dan, You lose!"
    And I should see a photo of a "paper"