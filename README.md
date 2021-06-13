# RPS Challenge

Instructions
-------

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

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this at this moment.

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


# My Solution
A Makers Week 3 solo weekend challenge.

* **Languages used**: Ruby, HTML
* **Frameworks used**: RSpec, Capybara, Sinatra

## Approach
* set up a web framework with RSpec testing framework, and using Sinatra's Modular Style
* used `params` to extract information from a request
* feature tested with Capybara
* debugging Capybara feature tests: used `save_and_open_page` method with `launchy` gem to screenshot test results of the webpage when test failed. 
* used buttons to restrict inputs for moves
* created Game class in Model layer to deal with game logic
* created Player class in Model layer to deal with player name and their move
* created Computer class in Model layer to deal with CPU random moves and stores it as a fixed move. Allows for further moves by calling `make_random_move`
* implemented a feature from Model layer
* used `srand` to seed random for feature testing
* implemented optional multiplayer feature 
* **avoided** use of global variables
* linted with rubocop
* reviewed feature/unit tests and refactoring


## Usage
Install Gems required using bundler:
```
bundle install
```

Start the server in the terminal using:
```
rackup
```
Note down the port number and access the website via:
http://localhost:PORT_NUMBER

N.B. You can play against CPU if you leave the player 2 name blank.


## TODO
* ✨ Aesthetics ✨ : flashing lights for player names?
* Question: When refactoring repetitive unit tests into a web helper method, is it ok to include the assertion itself in the helper method?
* Once project complete, what happens in order move to production?