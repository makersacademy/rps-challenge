# Rock, Paper, Scissors!

https://travis-ci.org/riyapabari/rps-challenge.svg?branch=master

Weekend Challenge 3: Built a web application where you can play rock, paper, scissors against a computer.

Installation Instructions
-------

1. Clone repo to your local machine.
2. Run `bundle` (N.B. make sure to run gem install bundler if you don't already have Bundler).
3. Run `ruby app.rb` from the command line.
4. Go to `http://localhost:4567` to see the application running on your local host.

User Stories
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

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

