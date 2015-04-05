#RPS Challenge: Rōnin Badge Test
[![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)

##[Available on Heroku - Click Here](https://afternoon-castle-6417.herokuapp.com)  

![RPS-v0.1-screenshot](http://sanjsanj.github.io/images/rps-screenshot-01.png "an image title")  

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
```
Feature: Pleasing the Makers Academy Marketeers
  In order to unwind after a hard day
  As a fan of simple games
  I want to register my name and play RPS

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Play Rock-Paper-Scissors!"
    Then the page should have "Play" button

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

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
