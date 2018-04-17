# Rock, Paper, Scissors Challenge

A simple player vs the computer application of 'Rock, Paper, Scissors'.

How to use
-------

* Clone the repo
* $ bundle
* $ rackup
* The app can be found at http://localhost:9292

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


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


Approach
----
* After diagramming how a simple game would run, I decided I would create 3 classes.
* A computer class to store players name, a computer class to create its choice and a game class to contain the game logic.


Further work
----
* Add CSS and images in order to improve the functionality of the app.
* Add a two player option.
* Add authentication so that the user can sign up and sign in to play.
* Use the rules of 'Rock, Paper, Scissors, Spock, Lizard' http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock
