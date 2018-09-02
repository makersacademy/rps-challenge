# RPS Challenge

Rock Paper Scissors is web-app built on Sinatra.  

## To download and run the app:
```sh
$ git clone git@github.com:Alastair2D/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

## Model

```
** INSERT MODEL **
```

The Ruby classes are designed around the principle of single responsibility - only the Game class is instantiated in the Controller, and the Game class delegates player-related information to the Player class.

The program was built test-first using Capybara and RSpec (Capybara allows the user stories to be feature-tested). As with all good OOP testing, the classes are tested in isolation using dependency injection. All randomness is stubbed to ensure consistency of test results.


## Goals
- Classes should be designed around the principles of Delegation & Single Responsibility.  The Game class delegates state and behaviour of player-related information to the Player class.  
- Only the Game class is instantiated in the controller, separating concerns to make this web-app a more modular program.


## Task
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

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Notes on test coverage
----------------------
You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
