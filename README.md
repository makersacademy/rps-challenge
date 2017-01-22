# RPS Challenge

User Stories:

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



## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here_ http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock  )

--------------
Domain Model:
Player
- name: stores name
- cpu_choose: if a cpu opponent is selected, choose an option
- pick: store what sign the player has picked

Game
- create: create a new instance of the classe game and store it as a class instance variable
- player1: stores a player object
- player2: stores a player object
- winner(player1.pick, player2.pick): determines who is the winner


## Rules

- Rock beats Scissors & Lizard
- Scissors beats Paper & Lizard
- Paper beats Rock & Spock
- Spock beats Scissors & Rock
- Lizard beats Spock & Paper

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.
