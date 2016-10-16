[![Build Status](https://travis-ci.org/kathwath/rps-challenge.svg?branch=master)](https://travis-ci.org/kathwath/rps-challenge)

# Rock, paper, scissor - Weekend Challenge

Instructions
-------

$ git clone https://github.com/kathwath/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup config.ru or ruby myapp.rb

Task
----

The task was to provide some Maker's marketeers with a 'rock, paper, scissor' web app for enjoyment/relaxation!

The user stories provided were:

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

The usual rules are applied in this game:
rock beats scissors, scissors beat paper, and paper beats rock.

Test coverage
----------------------

The build was TDD and used a combination of rspec and capybara; with unit and feature tests both in use.

At the time of writing this README I have incorporated travis-ci to my local repo and coveralls reports show
94% test coverage.  I struggled with writing an effective unit test for the 'outcome' method and will aim to include this, and increase test coverage.
