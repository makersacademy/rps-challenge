Feature: Play a game

  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Scenario: TIE rps mode: Player 1 & CPU both choose paper
    Given I am on the homepage
    And I seed with 2
    And I press "Play"
    And I am on the game page
    When I follow "Rock"
    Then I should see "It's a tie, try again!"

  Scenario: WIN rpsls mode: Player 1 & CPU both choose paper
    Given I am on the homepage
    And I choose "rpsls"
    And I seed with 2
    And I press "Play"
    And I am on the game page
    When I follow "Spock"
    Then I should see "You win!"
