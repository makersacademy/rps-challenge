# RPS Challenge: [![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)[![Coverage Status](https://coveralls.io/repos/github/festinalent3/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/festinalent3/rps-challenge?branch=master)

Task
-----

- Basic Rock Paper Scissors implementation with 1 player (against computer)
- Added 2 player option
- Added extended functionality "Spock Lizard"
- Added the "verb" on the competing choices, (i.e. in the results it will say the rock crushes the scissors)

How to Install
--------------
- Clone this repo
````
$ git clone git@github.com:tigretoncio/rps-challenge.git
````
- in the root directory, run `bundle`
````
$ cd rps-challenge
$ bundle
````
- in the project root directory `rps-challenge` launch the app `ruby app.rb`
- open a web-browser and go to page: localhost:4567

How to play
-----------
It is self-explanatory, but if not, take a read below.

- First decide if the number of players: 1 (play against Computer), or 2
- Second, decide the mode, (classic Rock Paper Scissors, or "spock lizard" mode) and click Submit
![set choices](http://i.imgur.com/uBkx8Pd.png)
- In the next screen, add the relevant name(s) and click Submit.
- Then start making your choice clicking the relevant image...
- If you play against another person, you will have a confirmation screen.  Click Submit, and only at that stage ask your opponent to look at your screen and take its choice.
- If you play against the computer,after choosing your element you will get a result screen, for example:
the spock chosen by <Player1> vaporises the rock chosen by <Player2>
![result](http://i.imgur.com/46R67vl.png)

At that point you have the choice of continue playing with your opponent with the button play again, (and then scores will be updated accordingly), or click button Reset to start again from the beginning.

Considerations
--------------

The basic design guidelines have been followed, i.e.

- Tell, don't ask
- Skinny controllers, none exceeding 5 lines
- All the logic in the model
- Each class having its own clear responsibility

A HelpView class has been added to help with showing some conditional views depending on the number of players and game mode (Classic or Spock).

A Choices class has been used to keep information about the choices, mainly using constant hashes

The algorithm to determine winner / loser is based on converting the choices to numerals and substracting those module the total set of choices.  If the result is even the choice 1 wins, if odd choice 2 wins.  If result is 0 then it's a draw.  This is very scalable as any arbitrary number of choices can be defined.
Finally all the relevant verbes for the game have been stored in a constant hash, and relevant method to access those.  The view just renders this information as required.



Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
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

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

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

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you submit a pull request, and you can also get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.

