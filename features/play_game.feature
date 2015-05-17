Feature: Playing the game
  In order to pass time
  As a bored marketeer
  I want to play Rock Papers Scissors

Scenario: starting a game
  Given I am on the homepage
  When I follow "Start a new game"
  Then I should see "HOW MANY PLAYERS?"

Scenario: Registering the number of players
  Given I am on the start page
  When I press "Submit" within "submit"
  When I go to the names page
  Then I should see "Enter your name"

Scenario: Entering player(s) names
  Given I am on the names page
  When I press "Submit" within "submit"
  When I go to the hands-to-choose page
  Then I should see "Choose your destiny"

Scenario: Choosing hands
  Given I am on the hands-to-choose page
  When I press "Submit" within "submit"
  When I go to the results page
  Then I should see "Play a new game"

Scenario: game results
  Given I am on the results page
  When I follow "Play a new game"
  Then I should see "Choose your destiny"
