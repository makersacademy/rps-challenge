Feature:
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  Scenario: 
    Given I am on the homepage
    When  I click "1 player game"
    And   I enter "Bob" in the "name" field
    And   I click the "submit" button
    Then  I should see "Player 1: Bob"
