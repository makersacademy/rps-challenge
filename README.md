# Makers Week 3 - RPS Challenge #
## Summary ##

A rock, paper, scissors (lizard, Spock) game written in Ruby that users can interact with via a browser.

## Setup ##

First, clone this repository. Then:

```bash
> bundle install

> bundle exec rspec #to run unit and feature tests
> rackup #to interact with program on localhost:9292
```
#### Gemfile ####
```ruby
ruby '2.6.0'

gem 'rake'
gem 'sinatra'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'rubocop', '0.71.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
```

## Core Requirements ##
* A user can select a move to play
* A user can win or lose a round against an opponent
* A user can play either another user or a computer opponent
* A user can win or lose the game after winning/losing a best of 5 rounds

## Tests ##

#### Technologies ###

19 tests in total:

RSpec - unit tests written for each class, and dependency injection used to ensure isolation of classes when testing.

SimpleCov - used to ensure a high test coverage. Achieved 100% test coverage.
