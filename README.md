# Rock Paper Scissors

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## My Approach

I created three classes within my model layer:

1. Game
2. Player
3. Computer

The Player class is understands the weapon choice made by the user and initialises with the user's name.

The Computer class understands the weapon choice selected at random by the user's opponent (ie the computer).

The Game class is initialised from the controller with a player and computer, and understands the outcome of a single game based on the game logic.

In order to decide upon a winner, the Game class also stores the weapons array and the rules (a hash of hashes). If I had time, I would have extracted these two responsibilities into separate classes.

## Experience the thrill

Run the following for endless, harmless, high-quality fun:

```
$ git clone git@github.com:AbigailMcP/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby ./app/rps.rb
```
