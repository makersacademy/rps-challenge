Feature: Computer has a choice
  In order to play against the computer
  As a player
  I want to see what the computer chose

  Scenario: Computer choice in regular game
    Given I am on the game page
    When I select "Rock"
    And I click on "Choose"
    Then I should see "Rock" onscreen
    And I should see "Computer chose " onscreen

  Scenario: Computer choice in extended game
    Given I am on the game page
    When I select "Lizard"
    And I click on "Choose"
    Then I should see "Lizard" onscreen
    And I should see "Computer chose " onscreen