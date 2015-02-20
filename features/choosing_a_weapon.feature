Feature: Choosing a weapon
	To win the game of Rock, Paper, Scissors
	As the human player in the game
	I want to choose a weapon

	Background:
		Given I am on the homepage
		When I enter "Tom"
    	And I press "submit"
		Then I should see "Choose your weapon, Tom"

	Scenario: Choosing Rock as a weapon
		When I click "Rock"
		Then I should see "Your selection is: Rock"

	Scenario: Choosing Paper as a weapon
		When I click "Paper"
    Then I should see "Your selection is: Paper"