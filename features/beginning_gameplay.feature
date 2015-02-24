Feature: Entering your name
  In order to set game up
  As a geek
  I want to begin playing

  Scenario: Beginning Gameplay
    Given I am on enter_name page
    When I provide "name" and click "START GAME"
    Then I should see the choices