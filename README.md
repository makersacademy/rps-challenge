# RPS Challenge
[![Build Status](https://travis-ci.org/jessmar94/rps-challenge.svg?branch=master)](https://travis-ci.org/jessmar94/rps-challenge)

This repository is a Ruby/Sinatra implementation of the following user stories:
```
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play Rock/Paper/Scissors
```
This implementation supports two player games.

The engine for the game is handled by two classes: Player and Game. The Player holds a players name and choice of move, and the Game stores two players and interfaces with the app.

## Status

As of 6th October 2019, both user stories had been implemented. However, I would like to add in a feature to give the option for one person to play against the computer, rather than always needing two people.
I also need to update the view files with some CSS to make each page look more visually pleasing.
I need to update my Travis CI status badge too.  

## How to Use

To play the game first clone this repository.
```
git clone https://github.com/jessmar94/rps-challenge
```
To run the tests move to the directory the repository has been cloned to and run rspec.

There are 11 tests, which are all passing, with 100% coverage of the lib files and feature tests for the web features.

To see the repository in action first install the dependencies (just Sinatra for actually running the app) by running:
```
bundle install
```
and then load the webpage by running
```
rackup config.ru -p 4567
```
Navigating to localhost:4567 in your web browser will then allow you to play the game.

Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

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

* Forking this repo
* TEST driving development of your app


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
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
