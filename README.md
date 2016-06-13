Rock Paper, Scissors, Spock, Lizard ![build status](https://travis-ci.org/kennbarr/rps-challenge.svg?branch=master) [![Coverage Status](https://coveralls.io/repos/github/kennbarr/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/kennbarr/rps-challenge?branch=master)
---------
Note: Test coverage 100% on single player game. Multiplayer coverage low due to unfamiliarity with multiple session usage in capybara


This is an expansion of traditional rock-paper-scissors with Spock and Lizard added to the game.
Play this game online at: http://kb-rpssl.herokuapp.com/

###Game screenshot:
![game screenshot](http://www.kennethbarrett.com//makers/rpssl/screenshot.png)
---------
This is an expansion of traditional rock-paper-scissors with Spock and Lizard added to the game.

###Instructions
Download this repo, then run bundler to install any necessary gems.
After that, just enter `ruby app.rb` in your terminal and go to `localhost:4567` in your browser

###Playing the game

######Login Screen:
![login](http://www.kennethbarrett.com//makers/rpssl/login.png)

* For a single player game against the computer, enter your name in the single player box and click start.
* For a multi-player game, if there are no opponents offered to you on the login screen, enter your name in the multi player box and click start. The game will begin when an opponent connects. If someone is already waiting for an opponent, the login screen will look as below:

![multiplayer login](http://www.kennethbarrett.com//makers/rpssl/multi_login.png)

Enter your name and join the game!

###Rules
This chart shows who wins and loses in a bout:
![rules](http://www.kennethbarrett.com//makers/rpssl/rules.png)
