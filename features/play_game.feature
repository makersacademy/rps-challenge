Feature: Starting the game
    As a marketeer
    So that I can see my name in lights
    I would like to register my name before playing an online game

Scenario: Registering
    Given I am on the homepage
    When i follow "New Game"
    Then I should see "What's your name?"
    When I type "Massud"
    And I click on "Submit"
    Then I should see "Welcome Massud"

Scenario: Starting the game
    Given I have registered
    When I follow "Play"
    Then I should see "Lets Play!"