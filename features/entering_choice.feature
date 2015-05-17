Feature: Entering a choice
  In order to win the game
  As a player
  I want to choose Rock, Paper, Scissors, Lizard or Spock

  Scenario: Entering Rock
    Given I am on the homepage
    When I enter my name, "Daryl"
    And I click on "Go!"
    And I am on the game page
    Then I should see "Make your selection"
    When I select "Rock"
    And I click on "Choose"
    Then I should see "Daryl chose: Rock"

  Scenario: Entering Scissors
    Given I am on the homepage
    When I enter my name, "Daryl"
    And I click on "Go!"
    And I am on the game page
    Then I should see "Make your selection"
    When I select "Scissors"
    And I click on "Choose"
    Then I should see "Daryl chose: Scissors"

  Scenario: Entering Paper
    Given I am on the homepage
    When I enter my name, "Daryl"
    And I click on "Go!"
    Given I am on the game page
    Then I should see "Make your selection"
    When I select "Paper"
    And I click on "Choose"
    Then I should see "Daryl chose: Paper"

    Scenario: Entering Lizard
    Given I am on the homepage
    When I enter my name, "Daryl"
    And I click on "Go!"
    Given I am on the let's play page
    And I click on "Or click here"
    When I select "Lizard"
    And I click on "Choose"
    Then I should see "Daryl chose: Lizard"

    Scenario: Entering Spock
    Given I am on the homepage
    When I enter my name, "Daryl"
    And I click on "Go!"
    Given I am on the let's play page
    And I click on "Or click here"
    When I select "Spock"
    And I click on "Choose"
    Then I should see "Daryl chose: Spock"