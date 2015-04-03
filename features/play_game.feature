Feature:
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Scenario: Registering
    Given I am on the homepage
    When  I click "1 player game"
    And   I enter "Bob" in the "name" field
    And   I click the "submit" button
    Then  I should see "Player 1: Bob"

  Scenario: Game
    Given I filled out the registration page
    When  I enter "rock" in the "move" field
    And   I click the "play" button
    Then  I should see "You played rock, Computer played "

  Scenario:
    Given I filled out the registration page
    When  I enter "wrong move" in the "move" field
    And   I click the "play" button
    Then  I should see "please enter rock, paper or scissors"
    And   I am redirected back to the "play game page"