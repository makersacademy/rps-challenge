Feature: Starting the game
  So that I can see my name in lights
  As a marketeer
  I would like to register my name before playing an online game

  So that I can enjoy myself away from the daily grind
  As a marketeer
  I would like to be able to play rock/paper/scissors

  Scenario: Giving name
    Given I am on the homepage
    Then I should see "please enter your name"

  Scenario: It can show you your name
    Given I am on the homepage
    When I "George" in the "Name" form
    And I click "Submit"
    Then I should see "Hello George"

  Scenario: It can display radio buttons and you can pick and submit one
    Given I am on the homepage
    When I "George" in the "Name" form
    And I click "Submit"
    And I choose "paper"
    And I click "Submit"
    Then I should see "You chose paper"