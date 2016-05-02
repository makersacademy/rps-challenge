

About
-----
Author: Emma Sjöström

This is the third individual challenge at Ronin, Makers Academy.

Task
----

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

My task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

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

* Single player
* Multi player



Screenshots
-----------

![Screenshot](http://imgur.com/plpFJee)

![Screenshot](http://imgur.com/Neuh18e)

![Screenshot](http://imgur.com/mnMosae)



Notes on test coverage
----------------------

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics.

You can see your test coverage locally by running:

```
$ coveralls report
```
