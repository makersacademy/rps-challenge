# RPS Challenge: Rōnin Badge Test

[![Build Status](https://travis-ci.org/adrianw1832/rps-challenge.svg?branch=master)](https://travis-ci.org/adrianw1832/rps-challenge)

How I approached it
-------------------
I approached it pretty much the same way I did for BattleshipsWeb this week. Following the feature then unit test cycle, I actually wrote a couple of webpages before doing the app logic. For the app logic, I largely followed Ben's Battleships as a good template. After that, I finished up on the Single Player Mode and went on to do the Multiplayer Mode. The process was largely similar to the single player with the exception of tracking the session ids and using refreshing lobby as a means to match the players. I am not sure if this is a good way to implement it but it certainly works. Doing multiplayer on battleships helped a lot with the bonus part since they are pretty similar in the implementation. I wasn't planning on doing the second bonus because it could easily be done with a bunch of case when codes. However, I gave it some thought and I wanted to see if there was a more elegant solution than that. The idea struck me suddenly and I would like to think that my implementation is quite a bit better, so I just added a bunch of tests and implemented the second bonus.

Instructions
-------
* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
