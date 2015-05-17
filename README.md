[![Build Status](https://travis-ci.org/andygout/rps-challenge.png)](https://travis-ci.org/andygout/rps-challenge)

[![Coverage Status](https://coveralls.io/repos/andygout/rps-challenge/badge.png)](https://coveralls.io/r/andygout/rps-challenge)

# Rock, Paper, Scissors Challenge

TECHNOLOGIES USED
-----------------
*   Sinatra web application framework in Ruby
*   Back-end unit and feature tests with RSpec
*   Front end tests with Cucumber

TO DO
-----
*   Symbols a better choice than strings for game choices.
*   Add 'game over' (and start over) scenario tests:-
    Scenario: Ending the game and starting over
    Given I am on the game over page
    Then I should see "Game Over"
    When I follow "Play Again?"
    Then I should see "Enter your name"
    (http://www.sinatrarb.com/testing.html- Testing Sinatra with Rack::Test / 'seed' function required?)
*   Two player mode.

N.B.
----
*   N.B. choose.erb radio button to see how 'id' must be added to make Cucumber features test work.

User Stories
------------
```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Required functionality
----------------------
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

![Screenshot Get Ready](/public/img/rps_get_ready.png)

![Screenshot Select](/public/img/rps_select.png)

![Screenshot Result](/public/img/rps_result.png)

![Screenshot Game Over](/public/img/rps_game_over.png)
