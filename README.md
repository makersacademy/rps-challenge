# RPS Challenge

[Source](https://github.com/makersacademy/rps-challenge)

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

## User Stories

> As a marketeer
> So that I can see my name in lights
> I would like to register my name before playing an online game

> As a marketeer
> So that I can enjoy myself away from the daily grind
> I would like to be able to play rock/paper/scissors

## Technical requirements

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
- Test driven with all tests passing and high test coverage

Advanced:

- Multiplayer - Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).
= Rock, Paper, Scissors, Spock, Lizard - Use the [_special_ rules](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock).

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Domain Model

Objects | Messages
---|---
Marketeer |
Online Game | Name, Rock, Paper, Scissors, winner

## Development Journal

I wrote a short domain model diagram in order to organise my thoughts on the user stories.

There aren't very many so I will need to rely on good TDD to drive the behaviour out of the tests.

### User Story 1

> As a marketeer
> So that I can see my name in lights
> I would like to register my name before playing an online game

When the marketeer visits the site, there needs to be a field in order to enter their name, and their name should be displayed.

First some set up, configured spec_helper.rb to require app.rb and set the capybara app to RPS.

- Wrote a feature test using capybara, that when visiting / and entering a name into the name field and submitting the form, then their name is displayed on the page. Test red.

- Created app.rb in the root dir.

  
