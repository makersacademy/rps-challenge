# RPS Challenge

## Approach by Claire Nelson

#### Break down the requirements using tables and Excalidraw following techniques learnt in Intro to TDD workshop and Domain Modelling workshop

- Capture the nouns in the user stories as objects and verbs in user stories as messages. Use the techniques learnt in the first week of Makers to create [object model tables](https://github.com/nelsonclaire/rps-challenge/blob/master/task_stories/user_stories.md) which should assist with how to create the tests, classes and methods.

## Description

This Ruby web app allows users to register their name and play rock, paper, scissors either against the computer or against a second person.

#### Technologies used

- Ruby
- Rspec (test framework)
- Sinatra (Ruby web framework)
- Capybara (web feature test library)


## Steps to download

1. Fork this [repo](https://github.com/nelsonclaire/rps-challenge)

2. `git clone git@github.com:<userName>/rps-challenge.git` onto your local machine

## Steps to setup required gems 

1. Follow the instructions on this [page](https://github.com/nelsonclaire/rps-challenge/blob/master/task_stories/pre_setup.md)

## Steps to run (two options)

1. Run `ruby app.rb` in root project directory

2. Visit `http://localhost:4567/`

3. Run `rackup` in root project directory

4. Visit `http://localhost:9292/`


## To run tests

Run `rspec` directly in root of your local project


## My approach

1. Break down user stories into an [object model](https://github.com/nelsonclaire/rps-challenge/blob/master/task_stories/user_stories.md) and simple feature steps

2. Add capybara config requirements into `spec_helper.rb`
    - `config.include Capybara::DSL`
    - `require File.join(File.dirname(__FILE__), '..', 'app.rb')`

3. Write first feature test - testing infrastructure on `home (/)` route

4. Make it pass by creating `app.rb` controller file with "/" route

5. Extend by creating `index.erb` view file

6. Check in client by running `ruby app.rb` and visiting `localhost:4567`

7. Continue with second feature test - testing enter name form

8. Follow red, green, refactor cycle for each feature test

9. Repeat until basic user story functionality is covered



#### Structure

- Controller: `app.rb`
- Views: `views/<name>.erb`
- Models: `lib/<name>.rb`
- Specs: `spec/<name>.rb`
- Features: `spec/features/<name>.rb`

#### What I know I need to work on
- Improving the two player experience (simplifying)
- Add points tally




------

Instructions
-------

* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----

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

* Forking this repo
* TEST driving development of your app

[You may find this guide to setting up a new Ruby web project helpful.](https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md)

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
* High [Test coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this at this moment.

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

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
