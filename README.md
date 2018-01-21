# RPS Challenge

[![Build Status](https://travis-ci.org/Leigan0/rps-challenge.svg?branch=master)](https://travis-ci.org/Leigan0/rps-challenge)
[![Maintainability](https://api.codeclimate.com/v1/badges/69372f7fd256677db6ca/maintainability)](https://codeclimate.com/github/Leigan0/rps-challenge/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/69372f7fd256677db6ca/test_coverage)](https://codeclimate.com/github/Leigan0/rps-challenge/test_coverage)

I have written this code to complete the challenge below to meet the user stories provided.

I have aimed to solve this challenge using the BDD cycle, with a test driven approach.

The game defaults to a computer play if no second player details are entered. The website output will be tailored depending if one player or two players. Given more time on the challenge I would potentially have a further path in a two player game so players can enter weapons on different screens. I have extended the functionality to allow players to play multiple games against each other and result log keeps track of this.

Again, given more time I would revisit my tests to consider removing tests that have become redundant following extension.

The game also includes spock and lizard rules -  you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock ).


User stories
----

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Getting started

* git clone git@github.com:Leigan0/rps-challenge.git
* cd rps-challenge
* bundle
* rackup
* visit http://localhost:9292/

## Usage

* To play the game follow instructions on screen

## Technologies used

* RSpec
* Capybara
* Ruby
* HTML
* CSS
* Sinatra
