Feature: Rock, Paper, Scissors WEB'
  As a Marketeer
  I want to be able to play rock, paper, scissors
  So that I can see my name in lights

  Scenario: I am greeted by name
    Given I am on the homepage
    And I fill in "name" with "Jenny"
    And press "submit"
    Then I should see "Hey Jenny!"
