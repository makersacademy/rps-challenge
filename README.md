# RPS Challenge

### Description

* This software is designed for one player to play a simple game of 'rock, paper, scissors' against a computer.
* Player one must be able to enter their name before being sent to the 'play' arena where they will make their CRUCIAL selections in a conventional game of 'RPS'.
* The outcome is whoever reaches 2 wins first.

### Development Process

1) Make root route for entering names. Upon submission, a post request is sent to take the players to the '/play' arena.

EDIT: Realised simplest way to build game would be to make player 2 computerised with randomised selections. Made changes accordingly.

2. Create a `Game` class to control the flow of the game. Another post request is used to ask player 1 to start the game. This will redirect them to where they can make their move.

3. The Player class will be responsible for selecting moves and storing those moves. In order to pass the feature tests, each move selection redirects to a different route so now I will need to consolidate all move selections to one route called '/outcome'

4. Create a Computer class for the human player to play against. Computer player's move will be randomised using #sample.

5. Use constant variable to hold hash of possible outcomes to render winner of each game.

6. Add tally_score method to Player and Computer class so that it's possible to track how many games have been won by the players.

### Installation

Install Bundler and the relevant gems with the below commands:

`gem bundle install`

`bundle`

Run 'rackup' to launch the web app

`rackup`

### Example

TBC

### Author

Terence Allitt

### Time spent on project

2 hours 55 minutes

-------

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
