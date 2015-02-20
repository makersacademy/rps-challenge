Feature: Starting a game
	To play Rock, Paper, Scissors
	As a fan of games that you can play with your hands
	I want to start the game of Rock, Paper, Scissors

	Scenario: Registering my name
		Given I am on the homepage
		When I enter my name "Tom"
		Then I should see "Choose your weapon"