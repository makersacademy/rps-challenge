
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

The application is built using simple MVC logic with the sinatra and rake gems.

Functionality
-------------

This is a simple web application for playing a game of rock, paper, scissors with a minimalistic user experience. There are two game modes:

* Single player - User vs Computer
* Multi player - User vs Another user

The user/users can keep playing each game for as many rounds as they feel necessary in order to escape the daily grind.

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
