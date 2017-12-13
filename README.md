# RPS Challenge [![Build Status](https://travis-ci.org/cristhiandas/rps-challenge.svg?branch=master)](https://travis-ci.org/cristhiandas/rps-challenge)

Instructions
-------

This is the Makers Academy 3rd Weekend Challenge, here you will find the task they asked us to do and how I solved it.

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
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## How I solved it

- First, I did a diagram with all the classes and possible methods that I considered important at the moment.
- Created a CPU class that returned R-P-S randomly.
- Settled the TEST environment for Capybara.
- Created a index, and added a form on it in which a player could add its name.
- Created a play path that shown the name of the player.
- Created a form with 3 buttons R-S-P, that way the player could choose what to play.
- Created all the game logic in a game file.

once all my test where passing I started refactoring the code as much as I could, finally I used rubocop to fix all the syntax.

## What made me struggle

- Finding a way to save the values of the buttons, I had to research for it and figured out that adding a name to my buttons would fix my problem.
- Finding a way to not show the winning message while no winners (I forgot to create the attr_reader that i needed). took me half an hour to catch that.
- Implementing the logic of the game in the simplest way. tried to avoid using if/else statements. I did it just to push my self a little.
