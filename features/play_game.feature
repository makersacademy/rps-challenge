Feature: play a game of RPS
  In order play a game of RPS
  As a player
  I want enter my name, choose mode and start playing

  Scenario: new user logs in and starts a game
    Given I am on the RPS homepage
    When I enter "tipper" as a username
    And I press "Proceed" button
    Then I see message "What's up tipper? Select your mode and let's start playing"
    And I see game modes to choose and button "Start Playing"

  Scenario: user plays game against computer
  	Given I start "pvc" game
  	When I choose "paper" and press "Choose"
  	Then Result of the game is given and "Play Again" button is made available