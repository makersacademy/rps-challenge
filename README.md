[![Build Status](https://travis-ci.org/joejknowles/rps-challenge.svg?branch=multiplayer)](https://travis-ci.org/joejknowles/rps-challenge) [![Coverage Status](https://coveralls.io/repos/joejknowles/rps-challenge/badge.svg?branch=master)](https://coveralls.io/r/joejknowles/rps-challenge?branch=master)
# RPS Challenge

Description
-----------
Fast paced Multiplayer Rock Paper Scissors Lizard Spock game.

Use
---
Just go to here:
http://rock-paper-scissors-ls.herokuapp.com/
####Multiplayer
  Just enter your name, press multiplayer, and wait for an opponent to arrive. Choose a move and when you've both taken your turn you will see the result, along with a score so you can keep playing for hours.
    "A minute to learn, a lifetime to master!"
####Solo
  Enter your name, press solo, and try to outfox the machine!

Approach
--------
May have taken 'see name in lights' too literally.
Rock paper scissors lizard spock. Press a button, see the result.
Fully test-driven primarily with cucumber/capybara. Game logic tested with Rspec and randomness stubbed by Rspec.

Instructions
------------
* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----
Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

As a marketeer
So that Me and a colleague can enjoy ourselves away from the daily grind
I would like to be able to play rock/paper/scissors with them

As a marketeer
So that I can satisfy my competitive needs
I would like to be able to keep score
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared


As usual please start by

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
