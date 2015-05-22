Feature: Player can play Rock-Paper-Scissors
  As a fun person stuck in a boring job
  So that I can prove to myself that my life is still interesting
  I would like to be able to play Rock-Paper-Scissors

  Scenario: Registering player name
    Given I am on the homepage
    When I fill in "name" with "my name"
    And I press "Submit"
    Then I should see "Welcome my name, let's play"
    And when I click on "let's play"
    Then I should be redirected to the play page

  Scenario: Playing the game
    Given I am on the play page
    When I press "Rock"
    Then I should see "You chose Rock"
    And I should see "The computer chose"
    And I should see the result which starts out with "So obviously"
