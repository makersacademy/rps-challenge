# RPS Challenge

Task
----

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

The task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Extended rules: adding spock and lizard
Rules of the extended game can be represented by the picture below:
![Screenshot](https://upload.wikimedia.org/wikipedia/commons/f/fe/Rock_Paper_Scissors_Lizard_Spock_en.svg)

## Instructions

How to download and run the app:

```sh
$ git clone git@github.com:kateloschinina/rps-challenge
$ cd rps-challenge
$ bundle
$ rackup
```
Then please load http://localhost:9292 in your browser, and enjoy the application.

You must have landed on the landing page, that looks like this:

[Imgur](http://i.imgur.com/wjJ2FWL.png)

On this page please select how you would like to play:
* Do you want to play with computer or with some of your colleagues? If you are playing with computer, computer's throw will be selected randomly.
* Do you want to play Rock/Paper/Scissors or Rock/Paper/Scissors/Spock/Lizard? You can enjoy both options.

After this the game is rather self-explanatory. Enjoy!


Build Badge Example
------------------

[![Build Status](https://travis-ci.org/kateloschinina/rps-challenge.svg?branch=master)](https://travis-ci.org/kateloschinina/rps-challenge)

[![Coverage Status](https://coveralls.io/repos/github/kateloschinina/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/kateloschinina/rps-challenge?branch=master)
