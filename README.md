# Rock, Paper Scissors (Spock, Lizard) CHALLENGE

This is my response to the 'weekend challenge' of Week 3 of Makers Academy. For full details of what the challenge involved, see 'APPENDIX' below.

## Getting started

Instructions are for Terminal on Mac OS

1) `git clone github.com:jonsanders101/rps-challenge.git`
2) `gem install bundle`
3) Navigate to `rps-challenge`
4) `ruby app.rb`
5) Open any web browser
6) Enter 'localhost:4567' into the address bar

## Usage

You should see the page below. Instructions for playing are self explanatory. You will be given the option to play against the computer or against another human player sharing your computer.

![Alt text](/images/homepage.png?raw=true "Homepage")

## Running tests

Run `rspec`

100% test coverage.


## Main Issues

* The methods in ‘spec/features/web_helpers.rb’ are not recognised by ‘spec/features/web_helpers.rb’. I have indicated in comments where these methods should replace repetitious code.
* Result string should be handled in a different class
* The '/choice' controller in '/app.rb' is too large

## Ways I Would Extend this project

* Use HTML and CSS to make the pages presentable
* Keep a score count to allow players to keep track of their score
* Add a hard reset method which would take the user back to the homepage
* Allow the user to customise the name and game logic for any odd number of weapons to extend it even beyond Spock and Lizard



## APPENDIX

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
