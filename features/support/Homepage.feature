Feature: Starting the game
  In order to play RockPaperScissors
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the '/' page
    When I fill in 'name'
    When i click 'submit'
    Then I should see hello "player_name"

   Scenario: making a choice
    Given I am on the '/new_player' page
    When I fill in 'choice'
    When i click 'submit'
    Then I should see hello "Winner"

