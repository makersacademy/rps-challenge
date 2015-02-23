Feature: Starting a game
  In order to play Rock Paper Scissors
  As an adult who is still a big kid inside
  I want to start a new game


  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: no name
    Given I am on the register page
    When I don't enter my name
    Then I see "Please enter your name"


