# RPS Challenge

The task is to provide a _Rock, Paper, Scissors_ game for Marketeers so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality
- two marketeers can play against each other
- each marketeer should be able to enter their name before the game
- each marketeer will be presented the choices (rock, paper and scissors)
- each marketeer can choose one option
- a winner will be declared (or a draw)

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Notes on test coverage
Tested with Rspec and Capybara (for web interface)

## Technical info

Ruby version: '2.4.0'

# Gems installed
gem 'rake'
gem 'sinatra'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
