Feature: Playing the game
    In order ot enjoy myself
    As a marketer
    I want to play Rock, Paper, Scissors

    Scenario: Starting the game
        Given I am on the homepage
        And I click 'Start Game'
        And I enter my name
        Then I should be asked for my move

