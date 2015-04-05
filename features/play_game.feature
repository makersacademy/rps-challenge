Feature: displays homepage
  In order to play the game
  As a user
  I want to register as a new player

  Scenario: A user is on the homepage
    Given a user is on the homepage
    Then they see "Enter your player name"
