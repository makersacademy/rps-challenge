# RPS Challenge

***

[![Build status](https://travis-ci.org/riyadattani/rps-challenge.svg?branch=master)](https://travis-ci.org/riyadattani/rps-challenge)

[Getting started](#getting-started) | [Play the game](#Play-the-game) | [Tests](#tests) | [User stories](#user-stories)

Makers Academy week 3 weekend challenge. This app lets you play rock, paper, scissors against the computer (randomly generates a move).

Original challenge criteria [here](https://github.com/makersacademy/rps-challenge).

## Getting started

Fork or clone this repo:

`git clone https://github.com/riyadattani/rps-challenge`
`gem install bundle`
`bundle`

## Play the game

`ruby app.rb`
Or:
`rackup`

## tests

`rspec`

## User stories

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
- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
