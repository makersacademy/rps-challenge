Feature:
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Scenario: Registering a single player game
    Given I am on the homepage
    When  I click "1 player game"
    And   I enter "Bob" in the "name" field
    And   I click the "submit" button
    Then  I should see "Player 1: Bob"

  Scenario: Playing a game
    Given I filled out the registration page
    When  I select "rock" in the "move" form
    And   I click the "play" button
    Then  I should see "You played rock, Computer played " it's move

#  Scenario: Entering a none valid move
#    Given I filled out the registration page
#    When  I enter "wrong move" in the "move" field
#    And   I click the "play" button
#    And   I am redirected back to the "/play_game" page
#    Then  I should see "please enter rock, paper or scissors"

  Scenario: Trying to join an empty game
    Given I am first on the hompage
    Then  I should not see "Join 2 player game"

  Scenario: Starting a 2 player game
    Given I am on the hompage
    When  I click "Start 2 player game"
    And   I enter "Bob" in the "name" field
    And   I select "rock" in the "move" form
    And   I click the "submit" button
    Then  I should see "Player 1: Bob, waiting for player 2 to join"

  Scenario: Joining a 2 player game
    Given I am on the hompage
    And   A player has already started a game
    When  I click "Join 2 player game"
    And   I enter "Rich" in the "name" field
    And   I select "paper" in the "move" form
    And   I click the "submit" button
    Then  I should see "Player 1: Bob, Player 2: Rich"

  Scenario: Player 1 Wins
    Given I have started a game and played rock
    And   A second player has joined and played scissors
    Then  I should see "Bob played rock and won vs scissors" when the page reloads

  Scenario: Player 2 wins
    Given I have started a game and played rock
    And   A second player has joined and played paper
    Then  I should see "Rich played paper and won vs rock" when the page reloads

  Scenario: Draw
    Given I have started a game and played rock
    And   A second player has joined and played rock
    Then  I should see "Draw" when the page reloads
    
