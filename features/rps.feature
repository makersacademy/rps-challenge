Feature: playing rps game
    In order to play game
    As a player
    I want to make a choice

    Scenario: As an unknown player
        Given I am on the home '/' page
        When I fill_in my "name"
        When I click "submit"
        Then I should see hello "player_name"


        Given I am on the 'new_player' root
        Then I should see 'player_name'
