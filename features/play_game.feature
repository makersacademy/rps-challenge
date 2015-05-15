Feature: Start A Game
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  Scenario: Go to Game
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Register your name & create new game
    Given I am on the New Game page
    And I fill in "name" with "Alex"
    When I press "send name"
    Then I should be on the Game page
    And I should see "Welcome Alex"

  Scenario: User does not provide their name
    Given I am on the New Game page
    And I fill in "name" with ""
    When I press "send name"
    Then I should be on the New Game page
    And I should see "Please put in a valid name"
