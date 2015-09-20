[![Build Status](https://travis-ci.org/anitacanita/rps-challenge.svg)](https://travis-ci.org/anitacanita/rps-challenge)

## Rock Paper Scissors

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

My task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
### My approach

I started this project by writing feature tests in Capybara until I was happy with basic front end feature, then moved to writing Rspec tests for a single Game class, that was supposed to hold the game logic. Then moved back to front end, to had a 'new round' feature.

This game version allows the player to:

- enter their name before the game

- choose one of 3 possible moves: rock, paper or scissors

- see the computer's move

- know if they won or lost the round

- chose a move for a next round, until the player gets bored of the game

For future versions, I'd like to:

- add a functionality of 3 rounds per game and then declare a winner

- make the game look nicer on the browser
