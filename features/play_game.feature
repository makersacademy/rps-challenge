Feature: Playing a game of Battleships
In order to play a game of battleships
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

Scenario: Playing against the computer
Given I am on the game page
And I choose "choice"
When I press "submit"
And I see "Your choice: Paper"
Then I see "Opponent choice: Rock"