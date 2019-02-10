# Rock Paper Scissors Challenge

[![rock-paper-scissors2.gif](https://i.postimg.cc/6QQt73qd/rock-paper-scissors2.gif)](https://postimg.cc/v4CpkGWB)

Installation
---------

1. Fork/clone this project
2. In the terminal, run bundle to install all the dev dependencies
3. In the terminal, type `rackup` to start the server (served on `localhost:9292` by default I believe)
4. Load up `http://localhost:9292/` in your browser of choice

Testing
---------
**Feature tests**: Capybara (using Selinium webdriver)
**Unit tests**: RSpec

To run the tests (including the capybara feature tests), run `rspec` in the terminal

Approach
---------
Initially, I built this using `session` in order to store state. This was fairly straightforward (and possibly preferable for the size of the project). 

However, as I was looking to understand 'extracting logic into a model layer' part better, I opted to abstract my states out into a model layer. The classes I used were: 

- Game
- Player
- Computer

As we weren't using a database to store state, I chose a `middleman` class to store (and persist) an instance of `Game` across routes. This `middleman` class creates a new instance and stores my game, which in turn stores the players (in this case, one of the players is an instance of the `Computer` class). 

For eg: 

when `Middle.create_game(Player.new('Tom'), Computer.new('HAL'))`, what is actually happening is: 

- a new instance of game is created (let's call this `game`)
- `game` is passed in 2 player instance objects (named Tom and HAL)
- The players know their own state (for eg: name and move)

When `Middle.make_move` is called, it in turn

- Calls `game.make_move`
- Which then calls the player to make the move and remember it (so the object retains its own state)

Brief
----

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

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.
