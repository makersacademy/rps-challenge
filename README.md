# RPS Challenge - Weekend 3

Task
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

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!__

My Approach
-----
* Repo forked from Makers Academy and cloned to local machine
* Before running bundle install, ensure all required gems are included within the Gemfile.
- Capybara
- Rspec
- Rake
- Sinatra
- Rubocop (for formatting)
- SimpleCov (for test coverage)

* Run bundle install in local repo to install gems
* Initialise rspec within rep with "rspec --init"
* Create directories that will be required
- ./lib (for rb class files)
- ./spec/features (for feature test and helper files)
- ./views (for page route erb files)

* Create "app.rb" file and "config.ru" so that the app can be run on your local server using "rackup"
* The spec_helper file will need to have necessary files required in order for the app and tests to work as expected. See below for the lines added to this spec_helper.
**require "simplecov"
require "simplecov-console"
ENV["RACK_ENV"] = "test"
require File.join(File.dirname(__FILE__), "..", "app.rb"
require "capybara"
require "rspec"
require 'capybara/rspec'
Capybara.app = RPS**

* Write feature tests for expected page behaviour and then create routes and index pages to make the tests pass.
* Once required routes have been created, create class rb files and spec files. Create unit tests for classes which will be used to extract behaviour.
* Make these tests pass and incorporate single responsibility into your methods an classes.

**MAKE SURE TO COMMIT CHANGES AS REGULARLY AS POSSIBLE/WITH EACH PASSING TEST"**
