# RPS Challenge

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

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


As usual please start by

* Forking this repo
* TEST driving development of your app


# Notes on my approach

Play Game online
----
How to download and run the app:

```sh
$ git clone https://github.com/littlethao/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby app/app.rb
```

Next, visit http://localhost:4567/ in your browser to start game.

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Notes on test coverage and future steps
----------------------

The web application still requires further tests to be put in place and the controller is still to be refactored to become a 'skinny controller'. I would also like to implement html and css styles to work further on the visual of the web app.
