Feature: player plays againts computer
  In order to play a basic game
  As a player
  I want to throw my weapon

  Scenario: I can start a game
    Given I am in homepage
    When I click the "Start Game" link
    Then I should be on start_game page

  Scenario: I can add my name
    Given I am in start_game page
    When I enter my name
    And I click "Play computer" button
    Then I should be on play page