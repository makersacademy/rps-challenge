[![Build Status](https://travis-ci.org/hughbric/rps-challenge.svg?branch=master)](https://travis-ci.org/hughbric/rps-challenge)
[![Coverage Status](https://coveralls.io/repos/github/hughbric/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/hughbric/rps-challenge?branch=master)


# Rock, Paper, Scissors

How to use this repository
--------------------------

Clone the repository.  
Change directory to the project root: `cd ./rps-challenge`  
Run `bundle install`  
Type `rackup -p 9292` from the command line.  
Visit your local host in a web browser: `http://localhost:9292`  

Enter your name and click through the UI.  

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

Functionality:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


## Things to add:

### Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

### Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )