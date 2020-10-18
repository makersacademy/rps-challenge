# RPS Challenge

Makers week 3 weekend challenge: creating a basic Rock, Paper, Scissors web app.

## Goals
- Use Sinatra and Ruby to create this project.
- Use Capybara and rspec to test-drive each feature.

## Instructions
Getting started:
```
$ git clone https://github.com/emilyalice2708/rps-challenge
$ cd rps-challenge
$ bundle install
$ rackup config.ru
```
Homepage offers two routes: computer game or multiplayer game:
![Homepage Screenshot](https://i.imgur.com/XF8fFRp.png)

Selecting computer option:
![Selecting Computer Option](https://i.imgur.com/Ev92drk.png)

User picks a move:
![Player Choice](https://i.imgur.com/q0kIbvR.png)

Results page if computer wins:
![Computer Wins](https://i.imgur.com/hLlEteI.png)

Results page if draw:
![Computer Draw](https://i.imgur.com/YOKupNp.png)

Results page if user wins:
![User Wins](https://i.imgur.com/nT7BrO6.png)

Selecting multiplayer option:
![Selecting Multiplayer Option](https://i.imgur.com/KsMM7Ko.png)

First player selects a move:
![First Player Choice](https://i.imgur.com/OABqz0s.png)

Second player selects a move:
![Second Player Choice](https://i.imgur.com/JuwaBxS.png)

Multiplayer results page if a player wins:
![Multiplayer Player Wins](https://i.imgur.com/i3q9mEX.png)

Multiplayer results page if players draw:
![Multiplayers draw](https://i.imgur.com/G4aoQX9.png)


## User Stories Analysis

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
Required: 
- Form rendered on home page with name field.
- Name saved and rendered in next web page. 

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
Required: 
- Array of RPS options and a sample method to select computer's turn.
- Ability for user to choose only one of Rock, Paper or Scissors.
- Link to page congratulating the winner.
- Link to restart the game.

Refractoring and Improvements:
- Create Player, Computer, Game and ResultsCalculator classes.
- Player: stores information about player (name and move).
- Computer: ability to select it's own choice each game.
- Game: begins a new game and stores both Players.
- Results Calculator: responsible for calculating the results of each game.

## Makers Instructions:
------------------------

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
