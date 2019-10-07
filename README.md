# RPS Challenge

[![Build Status](https://travis-ci.org/amyj0rdan/rps-challenge.svg?branch=master)](https://travis-ci.org/amyj0rdan/rps-challenge)

[Getting started](#getting-started) | [Usage](#Usage) | [Running tests](#running-tests)

[User stories](#user-stories) | [Approach](#Approach) | [Areas for development](#Areas-for-development)

This is the Week 3 weekend challenge from Makers Academy.

It is a web app that allows a player to play rock, paper, scissors against the computer.

The original brief from Makers Academy is [here](https://github.com/makersacademy/rps-challenge).

## Getting started

Fork or clone this repo:      
`git clone https://github.com/amyj0rdan/rps-challenge`     
`gem install bundle`     
`bundle`  

## Usage

Either:     
`ruby app.rb`    
Or:     
`rackup`     

## Running tests

`rspec`

## User stories

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

## Approach
I built small feature tests, which I then broke down into unit tests for class creation. Initially, I think I went too big with some of the feature tests and ended up moving methods between classes. However, when I realised this, I started writing smaller unit tests and broke the requirements into smaller chunks (per the hints on functionality). Following strict TDD in this approach (write a feature test, break it down into smaller unit tests, work through writing those and making them pass before going back to the feature test), I was able to pinpoint where I had gone too big or incorrectly assigned methods. Working in these smaller, more achievable steps helped me to complete the task.

## Areas for development
- More tests/behaviour for edge cases (eg, user doesn't input name).
- The `winner` method in Game returns a string - possibly return player name instead and interpolate in app.rb or result.erb.
- Rules and weapon selection are hard-coded into the classes - consider extracting and injecting at instantiation.
