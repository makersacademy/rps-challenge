Feature: Starting a game
  In order to play Rock Paper Scissors
  As an adult who is still a big kid inside
  I want to start a new game


  Scenario: Getting to the registration form
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Registration process
    Given I am on the register page
    When I type in my name
    Then I should be successfully registered

  Scenario: Choose a weapon
    Given I am on the game page
    When I select an option and submit
    Then I should see the title "You chose"

  Scenario: Results
    Given I am on the result page
    Then I should see a mention "Your opponent has chosen"


