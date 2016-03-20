[![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)

RPS Challenge
==================

![Screenshot](http://i.imgur.com/IGZ8q3w.png)

Introduction
-------------
:punch: :wave: :v:

Welcome to Rock, Paper, Scissors! This is a little web app that allows you to play the classic childhood game whenever you need to get away for a bit from your daily grind.

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

![Screenshot](http://i.imgur.com/xs96HA1.png)

You'll then be invited to choose a weapon from Rock, Paper and Scissors.

And if you are lucky, Computer will let you win (not always :P).

![Screenshot](http://i.imgur.com/FSVJTjy.png)

Have fun! :sunglasses:

Testing
--------
The app is tested using Capybara with RSpec. To run the tests, simply type `rspec` in the app's root directory.


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
