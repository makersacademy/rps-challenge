Feature: Starting a game
	To play Rock, Paper, Scissors
	As a fan of games that you can play with your virtual hands
	I want to start the game of Rock, Paper, Scissors

	Scenario: Registering my name
		Given I am on the homepage
		When I enter "Tom"
    	And I press "submit"
		Then I should see "Choose your weapon, Tom"

	Scenario: Press the submit button without entering a name
		Given I am on the homepage