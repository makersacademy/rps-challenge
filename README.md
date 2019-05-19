# RPS Challenge

## Description

This is the result of the third weekend challenge for submission to Makers Academy. It is a web app that allows a player to play [rock, paper, scissors](https://en.wikipedia.org/wiki/Rock%E2%80%93paper%E2%80%93scissors) against the computer.

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Getting Started

1. Clone this repo to your local machine using `git@github.com:EdinaBMakers/rps-challenge.git`
2. Run `gem install bundle` (if it is not installed already)
3. Run `bundle`

## Usage

Run `ruby app.rb` or `rackup`in the terminal

## Dependencies

This program uses the following gems:

```
source 'https://rubygems.org'

ruby '2.5.0'

gem 'rake'
gem 'sinatra'

gem 'capybara'
gem 'rspec'
gem 'rubocop', '0.56.0'
gem 'simplecov', require: false
gem 'simplecov-console', require: false
```

## Testing

#### Running Tests

Tests can be run from the root directory using the `rspec` command.

#### Test Results and Coverage

All tests pass and `simplecov` reported a test coverage of `100%`.

## Code Style

I used [Rubocop](https://rubocop.readthedocs.io/en/latest/) to ensure that Ruby coding standards are followed.
