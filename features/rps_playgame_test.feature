Feature: Playing vs the computer

  Scenario: I play a game vs the computer and I win
    Given I have submitted my name
    When I click "Play Game"
    When I select "rock"
    And I hit "Submit"
    Then I should see "player1 wins"

  Scenario: I play a game vs computer and it is a draw
    Given I choose "rock"
    And I hit "Submit"
    Then I Should see "draw" and "replay?"

