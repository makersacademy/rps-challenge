Feature: Playing the game
	In order to play rock, paper, scissors
	As a player
	I want to be able to make a choice and be told if I have won or lost

	Scenario: One player game
		Given I am on the homepage
		And I start a one player game
		And I click on the submit button
		When I enter "Julian" in the field
		When I click the go button
		Then I should see "Julian, please select your move!"
		When I select the rock option
		And click the go button
		Then I should see "Julian"

	Scenario: Starting a two player game
		Given I am on the homepage
		And I choose the two player button
		And I click on the submit button
		When I enter "Julian" in one of the fields 
		When I enter "John" in the other field
		And I click on the player choice page
		Then I should see "Player 1 will use" 

	Scenario: Playing a two player game
		Given I am on the one player game page
			
