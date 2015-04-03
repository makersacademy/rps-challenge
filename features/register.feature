Feature: Can see my name in lights
  So that I can bask in a warm fuzzy feeling
  As a marketer
  I would like to register my name and see it on the screen

  Scenario: User can register
    Given I visit the homepage
    When I enter my name
    When I click "Start Game"
    Then I should see "Welcome Dan"