# RPS Challenge

This challenge aims to build a 'Rock, Paper, Scissors' game using the framework Sinatra. This program was built test-first using RSpec and Capybara.

Run the app
-------

To download and run the app:
```sh
$ git clone git@github.com:Alastair2D/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup -p 4567
```
Then in your favourite browser, type `localhost:4567/` to access the homepage.
At this point, you can only play against a robot.

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


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them_ [here](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock) )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md). Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.
