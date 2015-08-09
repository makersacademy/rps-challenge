Feature: Starting the game 
	In order to play rock paper scissors
	As a marketeer
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"

	Scenario: Submitting name 
		Given -I am on "register"
		When I fill in "name" with "Benja"
		When I press "Submit"
		Then I should see "Welcome to Rock Paper Scissors"

		