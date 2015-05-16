Feature: As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What's your name?"
  When I type "Massud"
  And I click on "Submit"
  Then I should see "Welcome Massud"

Scenario: No name error
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What's your name?"
  When I type ""
  And I click on "Submit"
  Then I should see "Please enter your name"

Scenario: Starting the game
  Given I have already registered
  When I follow "Play"
  Then I should see "Lets Play!"