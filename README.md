# RPS Challenge

Instructions
-------

* This application allows a player to take part in a game of Rock, Paper, Scissors against a virtual opponent.

* The rules of the game are as follows:
  - Rock beats Scissors
  - Scissors beats Paper
  - Paper beats Rock

Installation
-------
To play the application online, visit https://rock-paper-scissors-makers.herokuapp.com/

To play the application locally:

Clone the repository

Run `gem list` in the project directory to check whether `bundler` is installed. If it is not, run `gem install bundler`

Run `bundle` in the project directory to ensure all necessary gems are installed

Run `rackup` and visit `localhost:9292`

Playing the game
-------

* Enter your name before the game begins

![Screenshot](https://imgur.com/a/hcfEn)

* Begin playing by selecting either rock, paper or scissors. Meanwhile, the virtual opponent also selects an option at random

![Screenshot](https://imgur.com/a/sJ6mT)

* A winner is declared

![Screenshot](https://imgur.com/a/JN615)

User stories
----
```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

