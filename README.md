# RPS Challenge

Samuel King Progress Report - Friday 22nd November 2019 @ 15:52
-------

Overview:
-------

* Two user stories completed
* My approach followed a TDD style
* Code structure as follows
  * `Game` class which stores two `Player` instances
  * The `Game` class encapsulates the logic for rock paper scissors
    * `#play` method returns the winning player object, or a string `"draw"` if it is a draw (see below for my thoughts on this)
    * There is a predicate method `#draw?` to indicate whether it was a draw
  * The `Player` class comprises two instance attributes: `name` and `move`
    * It also has relevant method `#make_move` to make a move
    * It has a method `#random_move` which is for use when it is a one player game - this logic should probably be refactored away from the `Player` class as it doesn't feel like it belongs here
  * The controller makes use of the post-redirect-get pattern

Left to be complete:
-------

* Yet to be implemented is the implementation of 2 player mode
  * This should be straightforward due to the structure of the Game class
  * It will require a number of additional routes in the controller to make this function, but should not require much, if any, change to the model - [plan](https://github.com/sk52/rps-challenge/blob/master/IMG_6375.jpg)
* I would like to refactor to remove my use of global variables as instructed [here](https://github.com/makersacademy/course/blob/master/intro_to_the_web/killing_the_global_variable.md)
* I would also like to attempt to refactor to remove the need for logic in the results view - this would need a rethink on the model as to what the #play method returns (player object if winner, string "draw" if no winner)

Lessons learned from this challenge:
-------

* Learned about false positives - in my feature tests on the results page I encountered these. This was because the feature test itself is present in the error page for page_status 500. Solutions are:
  * Either be more specific in where I am expecting something on the page so that it doesn't just check the whole page
  * Or use two expect statements in the scenario block, one of which to check `expect(page_status).to eq 500` and the following to assert the actual test check
* Learned about how to apply the principle of MVC by separating the model fully from the view
* I also applied my knowledge of dependency injection and the use of doubles on this project, the evidence is in my implementation of the Game class, which relies on Player class, before the Player class had even been defined, this is a good indicator that the double were doing their job!
* I have learned about applying the post-redirect-get pattern in my code

Overall feelings/thoughts:
-------

* A success, took more care in choosing an approach at the start, stuck to TDD more, as is evident in my commit log, lots to work on but I feel that I have applied my learnings from the module on this task

## The Challenge

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
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
