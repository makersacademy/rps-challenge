Feature: Playing The Game
  In order to win RockPaperScissors
  As a competitive player
  I want to play the game

  Scenario: Registering to play
    Given I am on the homepage
    And I can see "Welcome to the exciting world of RockPaperScissors!"
    When I click the "New Game" button
    Then I should see the "Name" field

  Scenario: Registering to play
    Given I am on the registration page
    When I fill in "Bob"
    And I click "Register"
    Then I am on the game page
    And I should see "Hello Bob"

  Scenario: Playing the game
    Given I am on the game page
    Then I should see my possible choices