Feature: Starting the game
  In order to play RPS
  As a student of MA
  I want to start a new game

  Scenario: Starting game
    Given I'm on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

    Scenario: Registering
      Given I am on the name page
      When I enter "My name"
      Then I should see the game
