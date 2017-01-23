# Rock, Paper, Scissors! Challenge

[![Build Status](https://travis-ci.org/dylanrhodius/rps-challenge.svg?branch=master)](https://travis-ci.org/dylanrhodius/rps-challenge) [![Coverage Status](https://coveralls.io/repos/github/dylanrhodius/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/dylanrhodius/rps-challenge?branch=master)

## The Task
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
 [Link to Makers Academy's instructions](https://github.com/dylanrhodius/rps-challenge/blob/master/MA_Instructions.md)

## The Approach

The aim of this challenge was to re-create the famous rock, paper, scissors game.
As usual, the application was produced following TDD principles.
In this very simple application, only one class was created: the `Game` class.
In hindsight, and in order to support future development of the app, the app could have been divided further into the following classes:
* `Player`
* `RoundWinner`
* `PointCounter`
* `PlayChoices` (rock, paper or scissors)

## Installing the APP
Clone the repository from [GitHub](https://github.com/dylanrhodius/rps-challenge) and then move into that repository.

```
$ git clone git@github.com:dylanrhodius/rps-challenge.git
$ cd rps-challenge
```

Load dependencies with bundle
```
$ gem install bundle
$ bundle install
```

## Using the APP
Load the app in IRB
```
$ irb
$ ruby app.rb
```

Open `localhost:4567` in your internet browser.

## Further Developments
* Should add best of 5 game-functionality.
