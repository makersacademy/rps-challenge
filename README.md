
[![Build Status](https://travis-ci.org/festinalent3/rps-challenge.svg?branch=master)](https://travis-ci.org/festinalent3/rps-challenge) [![Coverage Status](https://coveralls.io/repos/github/festinalent3/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/festinalent3/rps-challenge?branch=master)

About
-----
Author: Emma Sjöström

This is the third individual challenge at Ronin, Makers Academy.

Task
----

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

My task was to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


Instructions
------------

To download and enable:

````
$ git clone git@github.com:festinalent3/rps-challenge.git
$ cd rps-challenge
$ bundle
````

To run locally:
````
$ ruby app.rb
````



Functionality
-------------

This is a simple web application for playing a game of rock, paper, scissors with a minimalistic user experience. There are two game modes:

* Single player - User vs Computer
* Multi player - User vs Another user

The user/users can keep playing each game for as many rounds as they feel necessary in order to escape the daily grind.

Approach
--------

The application is built using simple MVC logic and sinatra. Unit tests are built using Rspec and feature tests using the capybara gem.

The Game class is initialized following the singleton pattern, creating a unique instance of self whenever a user starts a new game.

```
#In app.rb - single player
Game.create(Player.new(params[:player_name]))

#multi player
Game.create(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
```

The .create method of the Game class actually two arguments; instances of the Player class. The second argument defaults to a new player instance with the name attribute set to 'AI' if it is a single player game.

Using the instance of Game in the controller allows us to receive information from the client used to change the internal state of either the game or one of the player instances.  

```
@game = Game.instance
```

Something I'd like to focus on is refactoring my controllers and views a bit, to push some logic further down the stack. Perhaps adding a few more, less complex views, that can be presented based on business logic presented to the controller by the models. But for now, enjoy my first web application!


Screenshots
-----------

Multi player example, views of index, entering names and the first players turn.


![Screenshot](http://i.imgur.com/plpFJee.png)

![Screenshot](http://i.imgur.com/Neuh18e.png)

![Screenshot](http://i.imgur.com/mnMosae.png)



Notes on test coverage
----------------------

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics.

You can see your test coverage locally by running:

```
$ coveralls report
```
