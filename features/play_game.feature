Feature: Starting the game
  In order to play Rock, Paper, Scissors
  As a nostalgic player
  I want to start a new game

  Scenario: Player enters the website
    Given I am on the homepage
    When I follow "New Game"
    Then I should be taken to the registration page

  Scenario: Accessing the registration page
    Given I am on the registration page
    Then I should see the "Name" field
    And I should see the "Rock, Paper, Scissors, Lizard or Spock?" field
    And I should see a "Start Game" button


  Scenario: Player is on the registration page
    Given I am on the registration page
    When I fill in the form
    And I click the "Start Game" button
    Then I am taken to the game page

  Scenario: When on the game page
    Given I am on the game page
    Then I can see the result of the game
