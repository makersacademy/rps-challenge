
Rock, Paper, Scissors
=====================

Our task is to build an online application that enables a user to play a simple game of rock, paper, scissors against the computer. This challenge will use everything we have learnt this week about building an application on the web using Sinatra

Rules
--------
- Rock beats Scissors and Lizard
- Scissors beats Paper and Lizard
- Paper beats Rock and Spock
- Spock beats Rock and Scissors
- Lizard beats Paper and Spock

Project Overview
----------------
- A user types in their name which passes the that parameter to the player class and creates a new game with the player.
- The user can then select rock, paper, or scissors which takes them to the game page with their choice passed in as a parameter.
- On the game page the computers choice is also displayed (this is random and handled by the game class)
- A winner is then calculated based on the rules(see below)

Installation
------------
```
MacBook-Pro:desktop tompickard$ git clone https://github.com/tcpickard94/rps-challenge.git
MacBook-Pro:desktop tompickard$ cd rps-challenge
MacBook-Pro:rps-challenge tompickard$ bundle
MacBook-Pro:rps-challenge tompickard$ ruby app.rb
```

How to play
-----------

Navigate to localhost:4567 and enter your name:
![Dropbox](https://www.dropbox.com/s/euw4a62qqrg0tso/Screenshot%202016-02-07%2011.11.04.png?raw=1)

Select an option to play:
![Dropbox](https://www.dropbox.com/s/xw82hnocmw614vc/Screenshot%202016-02-07%2011.11.12.png?raw=1)

See the outcome of the game and choose to play again
![Dropbox](https://www.dropbox.com/s/9xk131v77vv0t4h/Screenshot%202016-02-07%2011.11.18.png?raw=1)

Build Status
------------
![Build Status](https://travis-ci.org/tcpickard94/rps-challenge.svg?branch=master)

![Coverage Status](https://coveralls.io/repos/github/tcpickard94/rps-challenge/badge.svg?branch=master)
