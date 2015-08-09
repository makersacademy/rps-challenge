Feature: Starting the game
  In order to play rock, paper, scissors
  As a player
  I want to start a new game

  Scenario: Signing in
    Given I am on the homepage
    When I press "New Game"
    Then I should be on "/SignIn"
    And I should see "What's your name?"

  Scenario: Setting up user info
    Given I am on the SignIn page
    When I fill in "name" with "Richard"
    And I press "Start Game"
    Then I Should see "Welcome Richard"

  Scenario: Playing the game
    Given I am on the PlayGame page
    When I select "Rock" from "Selection"
    When I press "Play"
    Then I will be on "/Results"
