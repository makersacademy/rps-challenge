# Rock Paper Scissors Challenge

[![Coverage Status](https://coveralls.io/repos/github/shezdev/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/shezdev/rps-challenge?branch=master)

To play Rock, Paper, Scissors
-------
Start the web server with the command
```
rackup -p 4567
```
Navigate to the following page in your web browser:
```
http://localhost:4567/register
```
Register and play against the computer!

My approach
------------
1. Environment Setup - Modified gem file to require 'rspec-sinatra', ran bundle to install gems, backed up contents of spec_helper.rb, ran rspec-sinatra init --app RPS app.rb (which overwrote spec_helper.rb) then ensured spec_helper.rb included all of the original content. Started the webserver with rackup -p 4567

2. Created spec/features directory to house my feature tests.
* a) Created feature test 1 - register_spec.rb.
* b) Then created a get /register route in app.rb and an associated views/index.erb view.
* c) Created a post /name route in app.rb and an associated views/play.erb view. The name route creates two instances of the Player class, and a new instance of the Game class.
3. Created a second feature test - spec/features/play_spec.rb
* a) scenario a just tests for the presence of text - passes
* b) scenario b tests when a radio button called Rock is selected and submitted that the content "You chose 'Rock' and The Computer chose 'Scissors', YOU WIN!" will be displayed.
c) Adding a form in play.erb that posts to /result
d) /result will calculate the winner (via game.rb) and redirect to /winner.erb with a message of who won!


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
