Feature: Playing a game
  In order to play rock, paper, scissors
  As a human being
  I want to start the game and play

  Scenario: Starting the game
    Given I am on the home page
    Then I should see "Press 'New Game' to start!"
    When I press "New Game"
    Then I should see "Please enter your name"
    When I fill in "playername" with ""
    And I press "Submit"
    Then I should see "Please enter your name"
    When I fill in "playername" with "Toby"
    And I press "Submit"
    Then I should see "Welcome: Toby"
    When I select "Rock" from "weapon"
    And I press "Go!"
    Then I should see "Results:"