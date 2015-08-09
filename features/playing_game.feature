Feature: Playing the game
  So that I can win
  As a game player
  I would like to play the game

  Scenario: Selecting my gesture
    Given I am on the homepage
    When I click "New Game"
    And I enter "Sarah" in "first_name"
    And I select "One Player" in "game_type"
    And I click button "Submit"
    Then I should see "Select your gesture:"

  Scenario: Seeing all gesture options
    Given I am on the homepage
    When I click "New Game"
    And I enter "Sarah" in "first_name"
    And I select "One Player" in "game_type"
    And I click button "Submit"
    Then I should see "Rock"

  Scenario: Finding out who won
    Given I am on the homepage
    When I click "New Game"
    And I enter "Sarah" in "first_name"
    And I select "One Player" in "game_type"
    And I click button "Submit"
    And I select "rock" as "gesture"
    And I click button "Submit"
    Then I should see "Result:"

  Scenario: Two player finding out who won
    Given I join the game
    Given Someone else joins the game
    Given I play the game
    Given Someone else plays the game
    And I click button "Result" in chrome
    Then we should see the result



