# RPS(SL) Challenge

This is my attempt at the classic game Rock, Paper, Scissors. I decided to include the additional gestures of 'Spock, Lizard' from the beginning.

Additionally, I have attempted to make the AI bot player have some of the characteristics seen in human players. Namely, in an academic paper [link](http://arxiv.org/pdf/1301.3238.pdf) by Zhijian Wang published in 2013:

```
Zhijian noticed that winning players tended to stick with their winning strategy, while losers tended to switch to the next strategy in the sequence of rock-paper-scissors, following what he calls "persistent cyclic flows".

The pattern that Zhijian discovered - winners repeating their strategy and losers moving to the next strategy in the sequence - is called a 'conditional response' in game theory.
```

The bot player takes into account what it just played, whether it won or lost, and acts in accordance to Zhijian's findings with a 50% probability.

Instructions
-------

Your task is to provide a _Rock, Paper, Scissors_ game to play on the web with the following user stories:

```sh
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the user should be able to enter their name before the game
- the user will be presented the choices (rock, paper and scissors)
- the user can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer

Change the game so that two users can play against each other.

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
```

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you submit a pull request, and you can also get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.
