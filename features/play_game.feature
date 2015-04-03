Feature: Can play Rock, Paper, Scissors once registered!
  So that i can enjoy myself between posting facebook ads
  As a marketer
  I would like to be able to play rock paper scissors

  Scenario: I can play against a random AI
    Given I register
    When I click a photo of a "rock"
    Then I should see "The winner is"


  # Scenario: Can pick rock
    # Given I register
    # When I click a photo of a "rock"
    # Then I should see "Sorry Dan, You lose!"
    # And I should see a photo of a "paper"

  # Scenario: Can pick paper, Computer is paper
  #   Given I register
  #   When I click a photo of a "paper"
  #   Then I should see "Sorry Dan, You drew!"
  #   And I should see a photo of a "paper"

  # Scenario: Can pick scissors, Computer is paper
  #   Given I register
  #   When I click a photo of a "scissors"
  #   Then I should see "Congratulations Dan, You won!"
  #   And I should see a photo of a "paper"

