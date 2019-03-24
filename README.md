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

# My Challenge
--------
### Getting started
`git clone git@github.com:samanthaixer/rps-challenge.git`

`bundle` to install the gems required

### Usage

`rackup -p 4567` to run the app

`localhost:4567` to access the app from a browser

**note** this has currently only been tested in Google Chrome


### Running tests

`rspec` in the root directory to run all test files except the feature tests
`rubocop` in the root directory to check the linter


### My approach
1. I added some of my own user stories - see Notes.md

2. Capture the verbs and nouns
  - Marketeer
  - Game - register_name, display_name, choose_option
  - Player - choose, name, random
  - Game - declare_winner, play
  - Option - name, image


3. Start building tests
  - I started by building feature tests which then drove out the app.rb and various views. It was only when I started to need to use anything in the Model layer that I wrote unit tests for the classes.

    `Feature tests` > pass > refactor to use model? `unit tests` > write model layer code

4. Repeatedly look to refactor, DRY up code and tests and check for responsibility. This is the reason I ended up with a rules class which hopefully allows any set of rules to be used (with a few minor changes to the code)

5. I have started to build out a new rules class for the rock-paper-scissors-spock-lizard class. This needs a bit more brain power to understand the rules but I should be able to switch one set of rules out for another


### Improvements that could be made

- Bonus question 1 - I created my program in a way that should be easy to update to 2 players - computer is just another player as well. However, I like my one player game so I haven't done this.
- Bonus question 2 - ask user which game they would prefer to play and then build a second set of files that care about that (including the random setting of the computer choice).
- Add error handling
- Check whether my implementation of the checking the rules could be done in a neater way

# The other details of the challenge

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
