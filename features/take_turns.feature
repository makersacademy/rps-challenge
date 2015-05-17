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
    Given my opponent chooses "Scissors" next
    And I choose radio button "Rock"
    Given my opponent chooses "Scissors" next
    Then I should be on the Game Won page
    And I should see "Congratulations, Alex, you won!"