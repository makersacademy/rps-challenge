Feature: Pleasing the Makers Academy Marketeers
  In order to unwind after a hard day
  As a fan of casual games
  I want to play RPS

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Play Rock-Paper-Scissors!"
    Then the page should have "Play RPS" button
