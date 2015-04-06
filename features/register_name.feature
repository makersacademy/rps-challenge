Feature: Register name
  In order to play Rock Paper Scissors
  As a player
  I want to be able to register my name

  Scenario: Insert name to classic game
    Given I am on the homepage
    And I should see "Insert your name"
    When I fill in "name" with "Bob"
    And I press "classic"
    And I should see "Hello Bob!"

  Scenario: Insert name to lizard/spock game
    Given I am on the homepage
    And I should see "Insert your name"
    When I fill in "name" with "Bob"
    And I press "lizspock"
    Then I should see "Hello Bob!"

  Scenario: Name not inserted
    Given I am on the homepage
    And I should see "Insert your name"
    When I leave "name" field empty
    And I press "classic"
    Then I should see "You have to provide a name!"