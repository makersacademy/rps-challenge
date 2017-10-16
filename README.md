[![Build Status](https://travis-ci.org/haletothewood/RetroRockPaperScissorsLizardSpock.svg?branch=master)](https://travis-ci.org/haletothewood/RetroRockPaperScissorsLizardSpock)

# Retro Rock Paper Scissors Lizard Spock

The Brief
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

## How To Get The Game

The game is available at https://retro-rpsls.herokuapp.com to play, alternatively you can follow the steps below:

* Fork this repo
* Load dependencies with `$ gem install bundle` and `$ bundle install`
* To run the game type `ruby app.rb` in your terminal
* Type 'localhost:4567' into your browswer address bar
* Enjoy!


## Functionality

The rules for the game are available from the start screen. You can select to play the computer or a human using the same computer. The game currently relies on trust and each player looking away whilst the other makes their choice. There are unlimited attempts per game with the option to restart with different players.


## Test Coverage

100% test coverage.


## Further Developments

* I wish my knowledge of how to best use HTML and CSS was extended as I felt quite limited to using the resources [W3Schools](https://www.w3schools.com/)
* I would have liked to have implemented the two player game with the same controllers and routes as the one player but for the sake of time and completion I decided to create two separate paths
* Create a counter for the score and possibly make it a best 2/3 or 3/5 
* Separate out the choice for player 1 in the two player game from the game class for single responsibility purposes
* Add sound effects
* Add the ability for two players to play from two separate computers using a waiting method
