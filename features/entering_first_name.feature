Feature: Entering second player name
  In order to set game up
  With a second player
  I want to begin playing

  Scenario: Beginning Gameplay
    Given I am on enter_player1_name page
    When I provide "name" and click "Begin"
    Then I should "Enter Player 1" name