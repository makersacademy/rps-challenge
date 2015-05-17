Feature: Playing a game of Rock Paper Scissors
In order to play a game of rock paper scissors
I would like to start a game
And play against my computer

Scenario: Registering
Given I am on the homepage
When I follow "New Game"
And I see "What's your name?"
When I type in "name"
And press "submit"
Then I see "Hello, name!"

Scenario: Playing the game
Given I am on the newgamepage
And I follow "Are you ready to play?"
Then I see "Please choose"

Scenario: Making a choice
Given I am on the game page
And I choose "paper"
And press "submit"
Then I see "Your choice: Paper"

Scenario: Playing against the computer
Given I am on the game page
And I choose "rock"
And I press "submit"
Then I see "Computer choice: Paper"

Scenario: Knowing who has won
Given I am on the game page
And I choose "rock"
And I press "submit"
Then I see "The winner is Computer!"
