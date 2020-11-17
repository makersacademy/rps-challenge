# RPS Challenge
This challenge was to implement a clone of Rock Paper Scissors using Ruby and the Sinatra web framework, with both a multiplayer and single player option available.

This was an exercise in:

 - Using the Sinatra web framework to manage GET and POST requests across a simple web app.
 - Building the MVC for the app.
 - Class diagrams for how the solution should be structured
 - HTML/CSS

To see my solution in action, I have deployed to Heroku [here](http://aws-rock-paper-scissors.herokuapp.com/), or follow the steps below to run locally.

Overall, I enjoyed this challenge and I think I hit the brief quite well. If I were to change anything, I'd like to spend more time learning about web accessibility principles and ensuring that this application meets the appropriate standards.

## My Approach
I started by mapping how my classes ought to behave with a diagram, that I largely stuck to throughout the process.

![The class diagram that I put together while planning this exercise](https://i.ibb.co/s99mYw0/Screenshot-2020-11-14-at-17-52-38.png)

I followed the principles of TDD as best as I could, and focused on trying to cleanly refactor after getting everything working.  My test coverage is sitting at 100%.

Initially, I saved the state of my application in a class variable. This worked really well locally, but when I deployed to Heroku I found that this led to unpredictable results with multiple users.  I transitioned to using sessions again to counter this.

  ## Installation

 - Clone the repository, change into the root directory
 - `$ bundle install`
 - `$ rackup`
 - Visit localhost:9292 (or whatever port is outputted to your terminal) in any web browser.

## Challenge Brief
  
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

  

Reviewers will potentially be using this [code review rubric](docs/review.md). Referring to this rubric in advance may make the challenge somewhat easier. You should be the judge of how much challenge you want this at this moment.

  

Notes on test coverage

----------------------

  

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated

on your pull request:

  

```ruby

require  'simplecov'

require  'simplecov-console'

  

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([

SimpleCov::Formatter::Console,

# Want a nice code coverage website? Uncomment this next line!

# SimpleCov::Formatter::HTMLFormatter

])

SimpleCov.start

```

  

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!