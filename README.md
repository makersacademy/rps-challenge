# RPS Challenge: [![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)[![Coverage Status](https://coveralls.io/repos/github/tigretoncio/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/tigretoncio/rps-challenge?branch=master)

How to Install
-------
- Clone this repo
- in the root directory, run `bundle`
- in the project root directory `rps-challenge` launch the app `ruby app.rb
- open a web-browser and go to the URL localhost:4567

How to play
-------
It is self-explanatory, but if not, take a read below.

First decide if the number of players: 1 (play against Computer), or 2
Second, decide the mode, (classic Rock Paper Scissors, or "spock lizard" mode) and click Submit

![img select](https://onedrive.live.com/redir?resid=FB615305C40D0298!1986&authkey=!AJOEi1wANvZYTmI&v=3&ithint=photo%2cpng)



In the next screen, add the relevant name(s) and click Submit.

![img enter names](https://onedrive.live.com/redir?resid=FB615305C40D0298!1987&authkey=!AIb1RCT0175xgJo&v=3&ithint=photo%2cpng)
Please note that if you play against the Computer, its name is automatically added and can't be modified

Then start making your choice clicking the relevant image...

![img make choice spock](https://onedrive.live.com/redir?resid=FB615305C40D0298!1980&authkey=!AHYfw_Cbv5LLW3M&v=3&ithint=photo%2cpng)

If you play against another person, you will have a confirmation screen:

![img ack play1](https://onedrive.live.com/redir?resid=FB615305C40D0298!1979&authkey=!AOrHlny_rFKm9hM&v=3&ithint=photo%2cpng)

click Submit, and only at that stage ask your opponent to look at your screen and take its choice.

If you play against the computer,after choosing your element you will get a result screen:

![img result spock](https://onedrive.live.com/redir?resid=FB615305C40D0298!1983&authkey=!AGiHEJc_d6FgXIw&v=3&ithint=photo%2cpng)

Note how the program chooses the right verb for the relevant pair, (in this case, Spocks vaporises the rock).

At that point you have the choice of continue playing with your opponent with the button play again, (and then scores will be updated accordingly), or click button Reset to start again from the beginning.

Enjoy!




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

