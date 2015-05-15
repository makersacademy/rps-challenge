Feature: Pleasing the Makers Academy Marketeers
  In order to know the outcome
  As a player of RPS
  I want the game to be declared a win, lose or tie

  Scenario: Win with Rock
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Scissors"
    And I click "Rock"
    Then I should see "You win"

  Scenario: Win with Paper
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Rock"
    And I click "Paper"
    Then I should see "You win"

  Scenario: Win with Scissors
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Paper"
    And I click "Scissor"
    Then I should see "You win"

  Scenario: Lose with Rock
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Paper"
    And I click "Rock"
    Then I should see "You lose"

  Scenario: Lose with Paper
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Scissors"
    And I click "Paper"
    Then I should see "You lose"

  Scenario: Lose with Scissors
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Rock"
    And I click "Scissors"
    Then I should see "You lose"

  Scenario: Tie with Rock
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Rock"
    And I click "Rock"
    Then I should see "You tie"

  Scenario: Tie with Paper
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Paper"
    And I click "Paper"
    Then I should see "You tie"

  Scenario: Tie with Scissors
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Scissors"
    And I click "Scissors"
    Then I should see "You tie"
