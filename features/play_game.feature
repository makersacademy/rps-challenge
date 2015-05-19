Feature: play rock paper scissors
  in order to play rps, I want to register as a player
  be greeted so that I know that I have been succesfully registered
  and then I want the option to play a game.


 Scenario: Observing the home page
    Given I am on the homepage
    Then I should see "What's your name?"

  Scenario: Entering name
    Given I am on the homepage
    When I enter "bob" in "player1"
    And I click submit
    Then I should see "Hello bob"

  Scenario: Playing a game
    Given I am on the homepage
    Given I am on the gamepage
    When I select "rock" in "human_choice"
    And I click "play"
    Then I should see "therefore bob won!"

