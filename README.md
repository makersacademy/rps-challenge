# RPS CHALLENGE

This is my response to the 'weekend challenge' of Week 3 of Makers Academy. For full details of what the challenge involved, see 'APPENDIX' below.

## Getting started

Instructions are for Terminal on Mac OS

1) `git clone git@github.com:oliverpople/rps-challenge.git`
2) `gem install bundle`
3) `bundle`

## Usage

Instructions are for Terminal on Mac OS

1) Run `rackup` within project directory.
2) Open Chrome browser and type `localhost:` followed by the port number `xxxx` shown on your command line.

* On the home page type and submit your name to register as a player.
* This will automatically redirected you to the second page where you can select the move you'd like to use ('Rock'/'Paper'/'Scissors').  Select a move by clicking one of the buttons.
* This will automatically tell you whether you have won the game or not.
* Click the `Play again` link to start game all over again.


## Running tests

Run `rspec`

100%% test coverage.

## Notes and To-dos

* The game goes back to the name registration page in order to play again. It would be better if the player was taken back to the select move page.
* The game doesn't tally the player's score. It would be better if each game displayed a running total of games won by the computer vs player.

## APPENDIX

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
