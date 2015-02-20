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

Scenario: Take a Turn
Given I am on the game page
And I enter a choice (rock, paper, or scissors) into the form
When I click "submit"
Then I should be taken to _________??
