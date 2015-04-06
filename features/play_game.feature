Feature: Starting the game
  In order to play Classic Rock Paper Scissors
  As a player that has registered his name
  I want to start a new game

  Background:
    When I am in "Bob" browser
    And I am on the homepage
    And I fill in "name" with "Bob"
    And I press "classic"

    When I am in "John" browser
    And I am on the homepage
    And I fill in "name" with "John"
    And I press "classic"

  Scenario: Classic game versus CPU
    Given I should be on the choose page for classic game
    When I choose "paper"
    And I press "cpu"
    Then I should be on the play page
    And I should see the "paper" element
    And I should see the result of the match

  Scenario: Classic game versus human player
    When I am in "Bob" browser
    And I should be on the choose page for classic game
    When I choose "paper"
    And I press "human"
    Then I should be on the matchmaking page
    

    When I am in "John" browser
    And I should be on the choose page for classic game
    When I choose "rock"
    And I press "human"
    Then I should be on the play page
    And I should see the "paper" element
    And I should see the "rock" element
    And I should see "Bob Wins!"

    When I am in "Bob" browser
    And I follow "click for search an opponent >"
    Then I should see the "paper" element
    And I should see the "rock" element
    And I should see "Bob Wins!"
