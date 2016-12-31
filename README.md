# RPS Challenge

[![Build Status](https://travis-ci.org/aabolade/rps-challenge.svg?branch=master)](https://travis-ci.org/aabolade/rps-challenge)
[![Coverage Status](https://coveralls.io/repos/github/aabolade/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/aabolade/rps-challenge?branch=master)

This is a web based application using Sinatra where a single player can take part in a game of Rock, Paper, Scissors. The basic rules are outlined below:

User Stories
============

```
As a player
So I can seen my name
I would like to register my name before playing an online game

As a player
So I can enjoy myself away from the daily grind
I would like to be able to play rock paper scissors
```

Approach and Technologies used
==============================

* Code written in Ruby.

* Unit testing using RSpec.

* Feature testing using Capybara.

* Sinatra to host local server for the game.

This project uses three main classes:

- **Game**: responsible for starting the game with two players and deciding the outcome of each battle.
- **Player**: responsible for storing the name of the player and the player's choice of weapon e.g. (rock, paper or scissors).
- **Opponent**: responsible for selecting a randomized weapon against the player.

Instructions and Installation
=============================

1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`
4. Run the application by typing ```rackup``` . This will initiate a local Sinatra session and you will see the following in your terminal:

```

[2016-11-27 23:10:09] INFO  WEBrick 1.3.1
[2016-11-27 23:10:09] INFO  ruby 2.2.3 (2015-08-18) [x86_64-darwin14]
== Sinatra (v1.4.7) has taken the stage on 4567 for development with backup from WEBrick
[2016-11-27 23:10:09] INFO  WEBrick::HTTPServer#start: pid=8205 port=4567

```

5. Now go to your browser and enter the following url:  **https://localhost:4567** . Enter your name, click play and choose your weapon!

The rules are as followed:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Further Features
================

* Implement multiplayer so two people can play against each other.
