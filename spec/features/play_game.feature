Feature: Playing the game
	In order to play rock, paper, scissors
	As a player
	I want to be able to make a choice and be told if I have won or lost

	Scenario: One player game
		Given I am on the homepage
		When I enter "Julian" in the field
		When I click the submit button
		Then I should see "Julian, please select your move!"
		When I select the rock option
		And The computer selected "rock"
		And click the go button
		Then I should see "Julian"


