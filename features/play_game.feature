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

  Scenario: I can play against another human
    When I am in "Tom"'s browser.
    Given I visit the homepage
    And I choose "multiplayer"
    And I register as "Sam"
    When I click a photo of a "rock"
    Then I should see "Waiting for other player"

    When I am in "Sam"'s browser.
    Given I visit the homepage
    And I choose "multiplayer"
    And I register as "Sam"
    When I click a photo of a "paper"
    Then I should see "The Winner Is Sam"

    When I am in "Tom"'s browser.
    Given I click 'Try Again'
    Then I should see "The Winner Is Sam"


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

