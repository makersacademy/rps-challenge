Feature: Starting the game
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  Scenario: Navigating to registration page
    Given I am on the homepage
    Then I should see "What's your name?"

  Scenario: Entering name and going to game
    Given I am on the homepage
    When I fill in "name" with "Daniel"
    When I press "Let's go!"
    Then I should be on the Play RPS page
    Then I should see "Choose Rock, Paper, or Scissors:"
