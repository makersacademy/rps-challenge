[![Build Status](https://travis-ci.org/MaryDomashneva/rps-challenge.svg?branch=master)](https://travis-ci.org/MaryDomashneva/rps-challenge)

[![codebeat badge](https://codebeat.co/badges/e05fdbdc-2617-44ec-b489-d9b47be2f088)](https://codebeat.co/projects/github-com-marydomashneva-rps-challenge-master)

Rock Paper Scissors Challenge
=================

[Check project online](https://powerful-chamber-96906.herokuapp.com/)

Task:
----

Create the Rock Paper Scissors Game!

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

User stoty:
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Technologies used:
-----
1. ruby 2.5.0
2. sinatra
4. capybara

Run project:
-----
* Clone the progect and type ```bundle install``` in terminal
* Local on your machine: Clone this project, use [http-server]
* Onlinel: use this [link](https://powerful-chamber-96906.herokuapp.com/)
* To run tests, type ```rspec```

Result:
-----
The app has 4 classes:

1. game  - class Game responsible for initializing the Game with 2 players. Two main methods inside the class:
* first_turn
* switch_turn
2. player - class Game responsible for creating a new player. The player has default choice equal to nil. You can set the player choice when creating a player.
There are 2 methods inside the class to operate the player's choice:
* select_option
* reset_choice
3. choices - class Choices contains constants with possible choices:

```
SCISSORS = 'Scissors'
ROCK = 'Rock'
PAPER = 'Paper'
``` 
4. resolver - class Resolver responsible for defining the result of the game.
