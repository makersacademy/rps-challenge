[![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)

Rock, Paper, Scissors, Lizard, Spock
==================

![Screenshot](http://i.imgur.com/PQqbCpt.png)

Introduction
-------------
:punch: :wave: :v: :crocodile: 🖖

Welcome to Rock, Paper, Scissors, Lizard, Spock! This is a little web app that allows you to play your [classic childhood game](https://en.wikipedia.org/wiki/Rock-paper-scissors) with additional weapons of [Lizard and Spock](https://en.wikipedia.org/wiki/Rock-paper-scissors#Additional_weapons), whenever you need to get away for a bit from your daily grind.

Features
-------------
* Solo player sign-in and play against Computer
* Multiplayer sign-in and play again each other

How to use the app
-------------------
Clone this repo to your local directory and run the app:
```
$ git clone git@github.com:junyuanxue/rps-challenge.git
$ cd rps-challenge
$ bundle install
$ ruby app.rb
```
Then, in your browser, type in `http://localhost:4567/`. You should see the `index` page, as shown on top of this document.

As instructed, enter players' names to start the game. Fill in the first field only if you wish to play against Computer.

You'll then be invited to choose a weapon from Rock, Paper, Scissors, Lizard and Spock.

![Screenshot](http://i.imgur.com/JRz8aWv.png)

If you are lucky, Computer might let you win (but not always). Have fun! :sunglasses:

Testing
--------
The app is tested using Capybara with RSpec. To run the tests, make sure you are under the app's root directory and type in your terminal:
```
$ rspec
```


Tools used
-------------
* Sinatra
* Capybara
* Ruby
* RSpec

Author
-------
Junyuan Xue

[github](https://github.com/junyuanxue)  [blog](https://spinningcodes.wordpress.com/)
