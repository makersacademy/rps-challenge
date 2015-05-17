Feature: Starting game
In order to play rock paper and scissors
As a excited player
I want to start a new game

Scenario: Registering
Given I'm on the home page
When I follow "New Game"
Then I should see "Let's have some fun"
When I fill in "name" with "my name"
And I press "Submit"
Then I should see "Welcome"

Scenario: No name provided
Given I am on the homepage
When I follow "New Game"
Then I should see "Let's have some fun"
When I don't fill in "name" with "my name"
And I press "Submit"
Then I should see "Let's have some fun"

Scenario: Playing game
Given I am on the startpage
When I choose "rock"
And I press "Test your luck"
Then I should see "Play again"

Scenario: Playing another game
Given I am on the resultpage
When I follow "Play again"
Then I should see "Welcome"