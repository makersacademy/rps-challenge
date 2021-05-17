# RPS Challenge

The RPS Challenge is a game that allows the user to play a simple game of Rock, Paper & Scissors.

My personal goal for this weekend challenge is to complete the exercise proposed to my best knowledge, and also make sure to document it in a good README.md

## Domain Model

- user should be able to enter their name before the game
- user will be presented the choices (rock, paper and scissors)
- user can choose one option
- the game will choose a random option
- a winner will be declared

USER                      GAME
user->game:"enter name" --- in /index

game->user: "name printed" --- in /play

game->user: "RPS options" --- in /play

user->game: "gives choice" --- from /play

game->user: "post result" --- in /result

game->user: "winner is declared"  --- in /result


## Build Status

There is a basic setup of an app.rb that connects pages and modules, with only one module in game.rb for the calculations of the random result of the computer, and the calculation on who is the winner.
The class game should give back a String with the result, that will be public to the user in the final page.

The exercise is not yet finished: the main frame of how it should work is drafted but not working entirely: So far it takes the player's name, it appears in the next page, where also the choice of rock, paper or scissor is given, and I progressed to the outlineas of the calculations, but that is not working yet. I also have a problem with the rspec, alestring me of a problem with rack-up that I haven't figured out yet.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed the latest version of `<ruby, rspec, sinatra & capybara>`
- You have a `<Gemfile>` that includes:
  ** gem 'sinatra'
  ** gem 'capybara'
  ** gem 'rspec'
- You modified your spec_helper to include `<require 'capybara/rspec'>`.

## Installing RPS Challenge

To install <RPS Challenge>, follow these steps:

- Forking this repo

## Using RPS Challenge

To use <rps-challenge>, follow these steps:

- Run `<rackup>` in your terminal to start your local host
- Open your browser and put 'localhost:9292'

## Acknowledgements

Thanks to the following people whose support & inspiration helped me develop this:

- [@BecaLParker](https://github.com/BecaLParker) for her Readme inspiration 

---

# MAKERS Instructions

---

- Feel free to use google, your notes, books, etc. but work on your own
- If you refer to the solution of another coach or student, please put a link to that in your README
- If you have a partial solution, **still check in a partial solution**
- You must submit a pull request to this repo with your code by 9am Monday morning

## Task

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

- Forking this repo
- TEST driving development of your app

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

- All tests passing
- High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
- The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md). Referring to this rubric in advance may make the challenge somewhat easier. You should be the judge of how much challenge you want this at this moment.

## Notes on test coverage

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
