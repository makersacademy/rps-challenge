# RPS Challenge

PLEASE NOTE:  The application is still in development and a full set of feature and unit tests need to be finalised before a final version of the application can be released.

Details
-------
This application is a basic version of the Rock Paper Scissors Game.  The player selects a weapon from rock, paper or scissors and the computer programme will auto generate a corresponding weapon.  The winner is based on the following rules.

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

If both weapons are the same the result is a draw.

The functionality provided here allows the following:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

This functionality addresses the use cases that have been provided by the users as follows:

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

Dependencies are detailed int he Gemfile and bundle should be run to ensure all dependent GEMS have been installed and are being used.

Also, please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
```
