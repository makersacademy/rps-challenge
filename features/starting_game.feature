Feature: Starting the game
  In order to play rock, paper, scissors
  As a nostalgic player
  I want to start a new game

  Scenario: Registering to play
    Given I am on the homepage
    When I click "New Game"
    And I enter "Sarah" in "first_name"
    And I click button "Submit"
    Then I should see "Welcome, Sarah!"

  Scenario: Failing to enter name at registration
    Given I am on the homepage
    When I click "New Game"
    And I click button "Submit"
    Then I should see "Please enter your name:"

