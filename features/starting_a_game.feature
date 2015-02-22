Feature: Starting the game
In order to play rock paper scissors
As a marketeer at Makers Academy
I want to start a new game


Scenario: Enter Name
Given I am on the homepage
And I enter a name into the form
When I click "submit"
Then I should be taken to a new page "What would you like to play?"

Scenario: No name entered
Given I am on the homepage
And I do not enter a name into the form
When I click "submit"
Then I should stay on the homepage "Hello Makers Marketer!"

Scenario: Pick a weapon
Given I am on the game page
And I enter a choice (Rock, Paper, or Scissors) into the form
When I click "submit"
Then I should be taken to the result page "You picked"

Scenario: No weapon picked
Given I am on the game page
And I do not enter a choice into the form
When I click "submit"
Then I should stay on the game page "Welcome to your game"

