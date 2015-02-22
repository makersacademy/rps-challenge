Feature: Entering your name
  In order to set game up
  As a enthusiastic battleshipper
  I want to begin playing

  Scenario: Beginning Gameplay
    Given I am on enter_name page
    When I provide "name" and click "Begin"
    Then I should see the board