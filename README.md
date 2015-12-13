[![Build Status](https://travis-ci.org/michaellennox/rps-challenge.svg)](https://travis-ci.org/michaellennox/rps-challenge)

#RPSLS Challenge

This is my solution for the [RPS challenge] carried out at the end of my third week at Makers' Academy. It's an interactive Rock-Paper-Scissors-Lizard-Spock that can be played solo or with another player.

##How I worked

I aimed to complete this challenge in a test driven manner, using automated feature and unit tests with rspec and capybara. I created feature tests using capybara to test how a user would interact with the game, I tested model logic by creating unit tests with rspec for each class.

##Installation Instructions

Clone the game from github and move into the directory from the command line.

```
$ git clone git@github.com:michaellennox/rps-challenge.git
$ cd rps-challenge
```

Start the server with rack.

```
$ rackup
```

Go to http://localhost:9292/ in your browser, you can either play solo vs the Computer or against another player.

Enjoy!

##Brief

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

###Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

###Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )
