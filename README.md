# Rock Paper Scissors

User Stories
------------

```sh
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functionality
-------------

- the player should be able to enter their name before the game
- the player will be presented the choices (rock, paper and scissors)
- the player can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


## Multiplayer

Two players can play against each other

## Bonus level 2: Rock, Paper, Scissors, Lizard, Spock

Advanced mode uses these _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

# Implementation

[v1.0](https://github.com/DataMinerUK/rps-challenge/releases/tag/v1.0)
------

Single player mode against the computer. [Player class](https://github.com/DataMinerUK/rps-challenge/blob/master/lib/player.rb) only has attributes of name, choice and opponent. The [Game class](https://github.com/DataMinerUK/rps-challenge/blob/master/lib/game.rb) runs the game logic (here done mathematically such that the game engine can be extended to use Spock and Lizard options). The logic is such that if all options are ordered such that, when wrapped circularly, each option beats half the remaining elements counter clockwise and loses to the other half clockwise then the logic (your choice - opponents choice) modulus number of choices is greater than 0 and less than or equal to the number of choices divided by two.

[v2.0](https://github.com/DataMinerUK/rps-challenge/releases/tag/v2.0)
------

Multi player mode. Here the logic in the controller sets it such that once one player chooses a multi player game than the next person into the game joins that game at the point where they set their name. The outcome cannot be given until both players make their choice. A while loop has been used in the controller to keep the page trying to load until both players have made their move.

[v3.0](https://github.com/DataMinerUK/rps-challenge/releases/tag/v3.0)
------

Advanced mode Rock Paper Scissors Lizard Spock has been implemented by creating a Game::RulesOptions class within Game which allows the controller to set new rules and options.

[v4.0](https://github.com/DataMinerUK/rps-challenge/releases/tag/v4.0)
-----

Refactored to use the strategy pattern. This reqyuired making a module to contain the game [dynamics](https://github.com/DataMinerUK/rps-challenge/blob/master/lib/dynamics.rb) and include this in a module for [Rock, Paper, Scissors](https://github.com/DataMinerUK/rps-challenge/blob/master/lib/rps.rb) and [Rock, Paper, Scissors, Lizard, Spock](https://github.com/DataMinerUK/rps-challenge/blob/master/lib/rpls.rb). All these need to contain are the rules and options for each game version. Now, when a Game is instanciated it takes two arguments; the Player class and the version module. The [module is included](https://github.com/DataMinerUK/rps-challenge/blob/master/lib/game.rb#L12) on instanciation.
