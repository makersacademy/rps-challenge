Feature: As a marketeer
  So that I van see my name in lights
  I would like to register my name before playing an online game

Scenario: Register Name
Given I am on the homepage
And I fill in my name as "Phoebe"
When I click "submit"
Then I should be taken to a new page and see ""Welcome, Phoebe! What would you like to play?"