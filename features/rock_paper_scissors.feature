Feature: initiating a game
  In order to play rock paper scissors
  As a nostalgic player
  I want to start a new game

  Scenario: Going to a new page
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Starting a new game
  	Given I am on the name page
    And I fill in "name" with ""
  	When I press "Submit"
  	Then I should see "What's your name?"

  Scenario: Filling in a name
    Given I am on the name page
    And I fill in "name" with "Fred"
    When I press "Submit"
    Then I should see "Hello Fred, welcome to Rock Paper Scissors Spock Lizard!"

  Scenario: Playing the game
    Given I am on the new game page
    And I select "scissors" from rockpaperscissors
    And my "name" is "Fred"
    When I press "Submit"
    Then I should see "Game over Fred!"