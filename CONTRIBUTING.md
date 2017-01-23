RPS Challenge
======

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

The Makers Academy Marketing Array (**MAMA**) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
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

Change the game so that two marketeers can play against each other (_yes there are two of them_).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules (you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock

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

---------------------------------------------------------------------------------

Tech Test Submission Requirements/Guidelines
======

Before submitting your test, please review the requirements/guidelines belows. Note that the requirements are mandatory and if you do not satisfy them we won't review your code (we don't mean to be harsh but this is based on the minimum expectations that our hiring partners require when you submit code for tech tests).

Requirements
------

* We use [Hound CI](https://houndci.com/) to check for violations to our style guide. When you submit your Pull Request, please then check over and correct everything that Hound has sniffed out that is wrong with your code (unless you feel you really can't do anything to fix it). Once you've fixed Hound errors, push your code again and the Pull Request should update automatically.
* Make sure you have written your own README that briefly explains your approach to solving the challenge.
* If your code isn't finished it's not ideal but acceptable as long as you explain in your README where you got to and how you would plan to finish the challenge.
* All code must be written test-first - we're looking for 100% test coverage or as near as possible to that figure.
* Ensure all your tests are passing.

Desirable
-------

* Set up [Travis CI](https://travis-ci.org/) on your own repo and add a [status badge](http://docs.travis-ci.com/user/status-images/) to your README showing that all tests are passing - and make sure it passes our own CI when you submit your PR.

Guidelines
-------

* Ensure you've understood the specification and built the code according to the challenge guidelines.
* Read through [Code Reviews&nbsp;:pill:](https://github.com/makersacademy/course/blob/master/pills/code_reviews.md) to understand what we're looking for in your code.
