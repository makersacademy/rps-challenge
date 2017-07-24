# RPS Challenge

Welcome to my attempt at the Rock, Paper, Scissors weekend challenge, the game has not been completed and therefore cannot be played, however you can see currently functionality on the link ![GIF](/app.gif?raw=true "Current App").

Task
------

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I know that  I've registered my name
I would like to be able to see confirmation of name being registered

As a marketeer
So that I can start playing the game
I would like to be able to see which weapons I can choose to play

As a marketeer
So that I can get a result
I would like the computer to choose which weapon to play against me

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```

## Basic Rules Of The Game

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Completed functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option

Uncompleted functionality

- a winner will be declared

Notes on submission:
- With more time to complete this challenge, I would have wanted to test and implement the remaining functionality
- I would have replaced all instance variables within the main app file (rsp.rb) with sessions and stored the instances in separate methods within a Turns test-suite and class.
- Once I would have done that, I would have gone on to refactor the main app file to no longer state any instance variables
- Following that I would begin to test the game/computer class followed the weapon class which would ultimately complete the app and return a game result.

Instructions to download and run the app:
-------

* Fork this repo
```
$ git clone https://github.com/memunyawiri/rps-challenge
$ cd rps-challenge
$ bundle
$ rspec --init

```
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
* Open an additional tab on your terminal and run the following:
```
$ rackup

```
You should now be able to interact with the app.

## Code reviewed against the following:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.
