# RPS Challenge

[![Coverage Status](https://coveralls.io/repos/github/makersacademy/rps-challenge/badge.svg)](https://coveralls.io/github/makersacademy/rps-challenge)

Usage
-------
* Launch the app using the command ```ruby app.rb```
* Visit ```localhost:4567```
* Sign-in with your name
* Choose your weapon
* Battle it out with the AI

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
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

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you submit a pull request, and you can also get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.
