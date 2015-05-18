Feature: Starting the game
  In order to play Rock Paper Scissors Lizard Spock
  As a player
  I want to start a new game

   Background:
    When I am in "Bob" browser
    And I am on the homepage
    And I fill in "name" with "Bob"
    And I press "lizspock"

    When I am in "John" browser
    And I am on the homepage
    And I fill in "name" with "John"
    And I press "lizspock"

  Scenario: Lizard/Spock game versus CPU
    Given I should be on the choose page for lizard/spock game
    When I choose "lizard"
    And I press "cpu"
    Then I should be on the play page
    And I should see the "lizard" element
    And I should see the result of the match

  Scenario: Lizard/Spock game versus human player
    When I am in "Bob" browser
    And I should be on the choose page for lizard/spock game
    When I choose "lizard"
    And I press "human"
    Then I should be on the matchmaking page
    

    When I am in "John" browser
    And I should be on the choose page for lizard/spock game
    And I choose "rock"
    When I press "human"
    Then I should be on the play page
    And I should see the "lizard" element
    And I should see the "rock" element
    And I should see "John Wins!"

    When I am in "Bob" browser
    And I get redirect to the play page
    Then I should see the "lizard" element
    And I should see the "rock" element
    And I should see "John Wins!"
