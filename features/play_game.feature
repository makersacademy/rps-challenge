Feature: Rock, Paper, Scissors WEB'
  As a Marketeer
  I want to be able to play rock, paper, scissors
  So that I can see my name in lights

  Scenario: I am greeted by name
    Given I am on the homepage
    And I fill in "name" with "Jenny"
    And press "Lets Play"
    Then I should see "Hey Jenny!"


  Scenario: Starting a game
    Given I am on the game page
    When I press "IMAGE"
    Then I should see "Jenny has chosen rock"

    ----------------------------------------------

  Scenario: Playing against the computer
  Given I am on the game page
  And I choose "rock"
  And I press "submit"
  Then I see "Computer choice: Paper"

  Scenario: Knowing who has won
  Given I am on the game page
  And I choose "rock"
  And I press "submit"
  Then I see "The winner is Computer!"

