# Bryony's RPS Challenge


The aim of this project
-------

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared



Instructions for getting started
-------

* this repo was originally forked from Makers Academy
* Fork this repo
* run bundle install
* initialize rspec-sinatra
* TEST drive development of your app
* coveralls are running to check test coverage



This project creates a _Rock, Paper, Scissors_ game for marketeers so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


* All tests pass
* There is high test coverage (100%)

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

You can get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.
