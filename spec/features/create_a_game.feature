Feature:  As a player
          I want to be able to choose
          If I can play one or two player games
          Then enter my name to start the game.

  Scenario: The user has gone to the index page
    Given I am on the homepage
    And I start a one player game
    And I enter my name "Julian"
    And I submit the form
    Then I should see "Julian"         

