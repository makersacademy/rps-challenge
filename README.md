# RPS Challenge: Rōnin Badge Test

My approach
-------

I identified three main classes to begin with.

* Game
* Player
* Computer

The Game class takes care of storing players, playing the game and deciding the outcome. I did not attempt the Rock, Paper, Scissors, Lizard, Spock challenge. Had I done so, I would have pulled out the rules of the game and injected the dependency into Game. So there is room for improvement in terms of SRP. 

The Player class just models a human player of the game. It stores a hand (Rock, Paper or Scissors) and the players name. Alhough it is unusual to have a public setter method for a class in OOD, I felt it was OK in such a trivial class which is not much more than a struct.

The Computer class models a computer player. Both the Player and Computer classes have exactly the same interface so that I could take advantage of Duck Typing. The Game class is instantiated with to players and it doesn't matter if one is a Computer player or not. It simply retrieves the 'hand' played by each player and determines if player one i the winner. The Computer class chooses what to play at random.

The main class of the App is RPS. This is derived from Sinatra::Base and drives the whole game. During development, I identified the need for a helper class to store the current player and retrieve it as needed. This is called PlayerStore although it is generic enough to hold any Ruby object and retrieve it using its object ID.

I carried out some very simple styling on the game to make it look a little better.

Instructions
-------

When visiting the root URL, you are presented with a registration screen as shown below:

![Screenshot](https://www.dropbox.com/s/7bmo4fvc5ueohee/register.tiff?dl=0)

Once you fill in your name, you are taken to the main play screen where you can make your choice:

![Screenshot] (https://www.dropbox.com/s/2726rfsq9x1eysp/play.tiff?dl=0)

You are then taken to a Win, Lose or Draw page. From there you can opt to play another game and you will be taken to the play screen again. You can also opt to start a new game and you will be taken to the Registration page again:

![Screenshot] (https://www.dropbox.com/s/0k389772jptf3c5/win.tiff?dl=0)

To install this program, carry out the following steps:

```
$ git clone git@github.com:DeathRay1977/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

Given more time, I would like to add: 

* An image of the hands played.
* A scoring system.
* Better Styling.
* A high score page (but that would require a back-end database which was beyond the scope of the challenge.

Below are the instructions of the original challenge:

Instructions
-------

* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
* You must submit a pull request to this repo with your code by 9am Monday morning

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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan_september2015 (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear! 
```

Note that you can replace `Coveralls.wear!` with  `SimpleCov.start` to get coverage stats locally
Then run `open coverage/index.html` from the command line to view details

