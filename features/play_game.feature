Feature: Playing a game
  In order to play Rock, Paper, Scissors
  As an office worker seeking distraction
  I want to start a new game

  Scenario: Initializing
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Enter your name:"

  Scenario: Registering
    Given I am on the register page
    Then I should see "Enter your name"
    When I fill in name with "Andy"
    When I fill in goal with "6"
    And I click "Submit"
    Then I should see "Hello, Andy!"
    Then I should see "6 rounds"

  Scenario: Beginning a game
    Given I am on the register page
    And I click "Submit"
    When I follow "Play!"
    Then I should see "Select rock, paper or scissors"

  Scenario: Making a choice and seeing results
    Given I am on the register page
    When I fill in goal with "6"
    And I click "Submit"
    When I follow "Play!"
    Then I should see "Select rock, paper or scissors"
    And I click "Submit"
    Then I should see "Result"

  Scenario: Playing another round
    Given I am on the choose page
    When I choose 'Rock'
    And I click "Submit"
    Then I should see "Result"
    And I follow "Next Round"
    Then I should see "Select rock, paper or scissors"