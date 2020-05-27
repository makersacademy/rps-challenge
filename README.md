# Rock Paper Scissors Challenge

This is a project created during my time as a student at Makers.

The requirements were as follows:

"The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little. Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web."

[Getting Started](#getting-started) | [Running Tests](#running-tests) | [Criteria for Building the Project](#criteria-for-building-the-project)

## Getting Started

Ensure you have the following setup on your machine:
- Bundler

`git clone` this repository and `cd` into the directory.

Install dependencies:

```
$ bundle install
```

To run the project, start up the server:

```
$ rackup -p 9292
```

Then navigate to `localhost:9292` in your browser

## Running Tests

This project is setup with:
- Capybara
- RSpec
- SimpleCov
- Rubocop

To run the tests:
```
$ bundle exec rspec
$ bundle exec rubocop
```

All tests are passing with 100% test coverage.

## Criteria for Building the Project

#### User Stories
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

#### Domain Model

| Models | Methods | State |
| :--- |:--- | :--- |
| Computer | weapon | |
| Game | result | computer |
| Player | | name, weapon |

#### Acceptence Criteria

- [x] the marketeer should be able to enter their name before the game
- [x] the marketeer will be presented the choices (rock, paper and scissors)
- [x] the marketeer can choose one option
- [x] the game will choose a random option
- [x] a winner will be declared
