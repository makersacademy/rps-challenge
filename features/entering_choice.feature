Feature: Entering a choice
  In order to win the game
  As a player
  I want to choose rock, paper or scissors

  Scenario: Entering Rock
    Given I am on the game page
    Then I should see "Make your selection"
    When I select "Rock"
    And I click on "Choose"
    Then I should see "Rock" onscreen

  Scenario: Entering Scissors
    Given I am on the game page
    Then I should see "Make your selection"
    When I select "Scissors"
    And I click on "Choose"
    Then I should see "Scissors" onscreen

  Scenario: Entering Paper
    Given I am on the game page
    Then I should see "Make your selection"
    When I select "Paper"
    And I click on "Choose"
    Then I should see "Paper" onscreen