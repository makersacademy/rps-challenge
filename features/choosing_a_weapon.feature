Feature: Choosing a weapon
	To win the game of Rock, Paper, Scissors
	As the human player in the game
	I want to choose a weapon

	Background:
		Given I am on the homepage
		When I enter "Tom"
  	And I press "submit"
		Then I should see "What's your weapon of choice, Tom?"

	Scenario: Choosing Rock as a weapon
		When I click "Rock"
		Then I should see "You chose: Rock"

	Scenario: Choosing Paper as a weapon
		When I click "Paper"
    Then I should see "You chose: Paper"

  Scenario: Choosing Scissors as a weapon
    When I click "Scissors"
    Then I should see "You chose: Scissors"