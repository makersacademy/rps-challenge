Hunor RPS game
===========
Update
-----

* just before sending the pull request, I managed to get computer's random choice to the winner screen and print it, not really working the way it should but definetely progress

Aproach
------
* On this weekend challenge I tried to think much more before doing anything else. I sat down and draw a simple Domain Model to see and have an idea how I'm gonna work
* I built up the skeleton of my web app, by first building the view and controller part without any model/functionality.
* I went back to the weekend challenges to have another look how to solve most of my steps

Stuck and struggle
------

* I got stuck on not fully understanding how get/post show and send information back and forth to the views also have to understand how sessions work

* I had some bad tests trying to mock Player model in Game tests, which I sorted out on checking older challenge tests to write my new ones

* I still need to focus on understanding the problem, breaking it down to the smallest parts and putting things in order how to actually build up the project. I have confidence in writing code and seeing the big picture but there is a little gap in between as mentioned above

Ruby, sinatra, spec, capybara, rake, HTML

### Installation

Clone repository:
```
$ https://github.com/tamasmagyarhunor88/rps-challenge.git
$ cd rps-challenge
$ bundle install
$ rackup
```
Run it:
```
$ rackup
$ open http://localhost:9292
```



# RPS Challenge

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
