# RPS Challenge
![Build Status](https://travis-ci.org/tamarlehmann/rps-challenge.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/tamarlehmann/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/tamarlehmann/rps-challenge?branch=master)

Features
-------
A classic game of _Rock, Paper, Scissors_, against a computer.
Basic Rules:
- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

User Stories
----
```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

How to play
----
- Enter your name before the game begins
![Image of Sign In](https://www.dropbox.com/s/1rs9b8aulws7tvq/Sign_in.png?dl=0)
- Choose your weapon (rock, paper and scissors) from the drop-down menu
![Image of Choosing Weapon](https://www.dropbox.com/s/ms227wwv1l4mt8w/Choosing_weapon.png?dl=0)
- Click 'Ok' to submit your choice and the computer will choose a random weapon (rock, paper and scissors)
![Showing ok button](https://www.dropbox.com/s/x97kkvmt2jqguqt/Showing_ok.png?dl=0)
- A winner will be declared
![Winner is declared](https://www.dropbox.com/s/m5cpi11p77r97y9/Winner_declared.png?dl=0)
- Decide whether to play again, and score board is updated, or exit.
![Updated scoreboard](https://www.dropbox.com/s/qvrvfqwkehashkw/Updated%20Scoreboard.png?dl=0)

Set Up
----
* Forking this repo and clone into local repo
* Install all gems needed with the command 'bundle install'
* Run a webserver and navigate to your local host to begin playing!

Technology Used
----
- Ruby
- RSpec/RSpec Sinatra & Capybara for testing
- HTML

Other Functionality to Implement
----
- Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).
- Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )
