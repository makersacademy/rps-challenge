# RPS Challenge

I used a test-driven approach to the challenge, creating a simple web app that allows the user to play a game of Rock, Paper, Scissors with a virtual opponent.

The app uses the MVC structure, with separate directories for the Model and View components.

I have implemented the basic functionality outlined in the user stories. Instead of opting to increase the complexity of the app (see bonus levels 1 and 2 below), I decided to focus on improving the aesthetics of the app by creating and implementing CSS. I am interested in Front End development and wanted to take the chance to explore this aspect of web development further.

I should note that the controller, as it stands, uses sessions to store information across different requests. It was my intention to use a single global variable ($game) for this purpose, however this seemed to cause issues when running the app via Shotgun (although not when "ruby app.rb" was called from the command line).

<em>I have since refactored to remove reliance on sessions and global variables, using the Singleton Pattern to store information across requests as a class instance variable</em>

* * *

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
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


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
