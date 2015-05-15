#RPS Challenge: Rōnin Badge Test

- Play RPS
- Play RPSLS

[![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)

##[Available on Heroku - Click Here](https://afternoon-castle-6417.herokuapp.com)  

![RPS-v0.1-screenshot](http://sanjsanj.github.io/images/rps-screenshot-04.png "RPS Game")  

Task
-------
Create an app to satisfy the user stories

User Stories 
----
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Tests
-----

- Cucumber Tests  

```
Feature: Pleasing the Makers Academy Marketeers
  In order to unwind after a hard day
  As a fan of casual games
  I want to play RPS

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Play Rock-Paper-Scissors!"
    Then the page should have "Play RPS" button
    
Feature: Giving the player the RPS experience
  In order to play RPS
  As someone with far too much spare time
  I want to register my name and play RPS

  Scenario: Enter the game without a name
    Given I am on the homepage
    And I click "Play"
    Then I should be on the "/game" page

  Scenario: Enter the game with a name
    Given I am on the homepage
    And I fill in "Name" with "Bob"
    And I click "Play"
    Then I should be on the "/game" page
    Then I should see "Welcome Bob"

  Scenario: Play the game and see your choices
    Given I am on the homepage
    And I click "Play"
    Then I should see "Make your choice"
    Then the page should have "Rock" button
    Then the page should have "Paper" button
    Then the page should have "Scissors" button

  Scenario: Program knows what my choice was
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    Then I should see "You chose Rock"

  Scenario: See opponent's result
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    Then I should see "your opponent chose"

  Scenario: Get a result and play again
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    Then I should see "Make your choice"
    Then the page should have "Rock" button
    Then the page should have "Paper" button
    Then the page should have "Scissors" button

  Scenario: Return to main menu and change name
    Given I am on the homepage
    And I click "Play"
    And I click "Rock"
    And I follow link "Homepage"
    And I fill in "Name" with "Sue"
    And I click "Play"
    Then I should be on the "/game" page
    Then I should see "Welcome Sue"

Feature: Pleasing the Makers Academy Marketeers
  In order to know the outcome
  As a player of RPS
  I want the game to be declared a win, lose or tie

  Scenario: Win with Rock
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Scissors"
    And I click "Rock"
    Then I should see "You win"

  Scenario: Win with Paper
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Rock"
    And I click "Paper"
    Then I should see "You win"

  Scenario: Win with Scissors
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Paper"
    And I click "Scissor"
    Then I should see "You win"

  Scenario: Lose with Rock
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Paper"
    And I click "Rock"
    Then I should see "You lose"

  Scenario: Lose with Paper
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Scissors"
    And I click "Paper"
    Then I should see "You lose"

  Scenario: Lose with Scissors
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Rock"
    And I click "Scissors"
    Then I should see "You lose"

  Scenario: Tie with Rock
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Rock"
    And I click "Rock"
    Then I should see "You tie"

  Scenario: Tie with Paper
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Paper"
    And I click "Paper"
    Then I should see "You tie"

  Scenario: Tie with Scissors
    Given I am on the homepage
    And I click "Play"
    And my opponent chooses "Scissors"
    And I click "Scissors"
    Then I should see "You tie"
```

- Rspec Tests

```
CPU
  can choose Rock, Paper or Scissors
  can choose Rock, Paper, Scissors, Lizard or Spock

Decide
  RPS
    knows P1 Rock beats P2 Scissors
    knows P1 Paper beats P2 Rock
    knows P1 Scissors beats P2 Paper
    knows P1 Rock loses to P2 Paper
    knows P1 Paper loses to P2 Scissors
    knows P1 Scissors loses to P2 Rock
    knows P1 Rock ties with P2 Rock
    knows P1 Paper ties with P2 Paper
    knows P1 Scissors ties with P2 Scissors
  RPSLS
    knows P1 Lizard beats P2 Spock
    knows P1 Lizard beats P2 Paper
    etc etc etc

13 examples, 0 failures
```

**Rōnin BANZAI!!!!**
