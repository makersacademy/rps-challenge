Feature: playing rps game
  In order to play game
  As a player
  I want to make a choice

  Scenario: As an unknown player
    Given I am on the home '/' page
    When I fill_in my "Riz"
    When I click "submit"
    Then I should see "Riz"

  Scenario: As an known player
    Given I am on the home '/new_player' page
    When I fill_in my choice "Rock"
    When I click "submit"
    Then I should see the page with "COMPUTER WIN!"


  Scenario: play again
    Given I am on the '/result' page
    When I click link "Replay"
    Then should see the "choice" page


