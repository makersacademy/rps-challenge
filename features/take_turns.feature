Feature: Take A Turn
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

  Scenario: Player takes a turn
    Given I am on the Take Turn page
    And I choose radio button "Rock"
    When I press "Submit"
    Then I should see "Rock"

  Scenario: Player wins a game
    Given I am on the Take Turn page
    And I choose radio button "Rock"
    And my opponent chooses Scissors
    And I choose radio button "Rock"
    And my opponent choose Scissors
    Then I should go to the Game Won page
    And I should see "Congratulations, you won, game over"