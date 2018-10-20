## RPS Challenge
##### *(Makers Academy - Week 3)*

### [Introduction](#introduction) | [Approach](#approach) | [Setup](#setup) | [Run](#run)

## Introduction
This is the third weekend challenge at the 12 week [Makers Academy](https://makers.tech/) bootcamp. Working individually the task was to create a web application to play **Rock Paper Scissors** based on the following user stories:
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functional specifications:
* the marketeer should be able to enter their name before the game
* the marketeer will be presented the choices (rock, paper and scissors)
* the marketeer can choose one option
* the game will choose a random option
* a winner will be declared

#### Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

#### Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules _(you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock)_

# Approach
1. Model and Diagram Class structure and Methods
2. Write RSpec unit tests
3. Make unit tests pass
4. Write feature tests using capybara
5. Make feature tests pass
6. Refactor

# Setup

```
$ git clone https://github.com/toddpla/rps-challenge.git

$ cd rps-challenge

$ bundle
```
# Run
```
$ rackup config.ru
```
