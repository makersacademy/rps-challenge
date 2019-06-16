# RPS Challenge . 
[![Build Status](https://travis-ci.org/Danielandro/rps-challenge.svg?branch=master)](https://travis-ci.org/Danielandro/rps-challenge)

Introduction 
------------

Week 3 Challenge from Makers Academy

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

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Instructions
------------
* Fork this repo
* Run the command `bundle` in the project directory to ensure you have all the gems
* Type the command `rackup` to start the server
* Go to `localhost:9292` in your browser to play the game

Progress + Challenges
--------
I have satisfied the user stories. Though its not so colourful, the game allows one player to challenge a "computer". The result is displayed on the screen & the user can play again.

* Slimming down the controller, the `play/:weapon` route in particular

* Getting rid of session and using class instance variables to persist state between routes

* Wanted to use emojis instead of the buttons, but had trouble positioning them. Also wanted to make sure they were accessible to screen readers. Something to be implemented.

* Validation if a user doesn't enter their name (make field required)

Technologies
------------

Ruby 2.5.0, Sinatra, Capybara, RSpec 3.7, Rubocop, SimpleCov, Pry

### Resources
[Making emoji's accessible](https://dev.to/finallynero/accessible-emojis--1pjh)

[Stubbing Array.sample](https://stackoverflow.com/questions/46745184/how-to-stub-sample-with-rspec)

[Replace nested conditionals with guard clauses](https://www.refactoring.com/catalog/replaceNestedConditionalWithGuardClauses.html)

[Testing methods run from initialize](https://stackoverflow.com/questions/45681506/best-approach-to-testing-methods-run-from-initialize-with-rspec)

[Rock Paper Scissors inspiration] (http://marcelamari.com/blog/2014/03/my-first-javascript-game/)
