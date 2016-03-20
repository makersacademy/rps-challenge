[![Build Status](https://travis-ci.org/kevinpmcc/rps-challenge.svg?branch=master)](https://travis-ci.org/kevinpmcc/rps-challenge)

Project Description
----------
This project is my Week 3 weekend challenge to build a multiplayer Rock,Paper,Scissors,Spock,Lizard(RPSSL) game.

I first built a one-player version of Rock,Paper,Scissors(RPS) where you played against the computer. You can find this in branch one-player.
Next I built a two-player version of RPS where two player play in same browser window. You can find this in branch two-player.
Finally I built a two-player version of RPSSL which you can find in master branch.

I took a TDD approach and created RSpec feature tests and unit tests to drive design and development.

The project structure is broken down as follows.
app.rb in root folder is the Controller
lib holds the Model ruby files
views folder holds the View feature erb files
public folder holds images used in the project

Gameplay
-----------

Installation Instructions
-------
start by cloning this repository. In terminal or other Command line tool put in the below

<code>git clone https://github.com/kevinpmcc/rps-challenge.git</code>

next move into the project folder by entering

<code>cd rps-challenge</code>

If you know you have bundler installed skip this step. If you're not sure put in following

<code>gem install bundler</code>

from here install all necessary gems from the gemfile by entering

<code>bundle install</code>

and we're now ready to go. to run the game

<code>ruby app.rb</code>

and in your browser enter

localhost:4567

enjoy!

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


As usual please start by

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

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

