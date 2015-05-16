Feature: Player can play Rock-Paper-Scissors
  As a fun person stuck in a boring job
  So that I can prove to myself that my life is still interesting
  I would like to be able to play Rock-Paper-Scissors

  Scenario: Registering player name
    Given I am on the homepage
    When I fill in "name" with "my name"
    And I press "Submit"
    Then I should be redirected to the play page