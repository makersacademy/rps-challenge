# RPS Challenge

## My Approach
For this challenge I again used a TDD approach, firstly focusing on how the app would work and mapping out the MVC pattern of the app. I then would implement a feature test (and an rspec unit test when appropriate) for each step of the app and each user story.

I first mapped out how many different classes were needed and the appropriate methods that would interact with each other to satisfy the user story. I then mapped out the request response cycle to see what different pages were needed, and what post/get requests.

I then began writing my first capybara feature test, and implementing the correct code to make this pass. Soon after implementing the first feature:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

I set up some unit tests for my player class, that tested that it would store the name given as a parameter when signing into the game. I then attempted to implement the next user story:

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

For this firstly I implemented capybara feature tests that made sure buttons for 'rock', 'paper' and 'scissors' were available on the play page that the user is redirected to after they have put in their name. I then implemented this feature. Soon after writing the code for these buttons I implemented unit tests for both a computer class (an opponent that picks rock, paper or scissors randomly) and a game class that calculates whether the opponent has won or not. This game class initializes with both a player and a computer.

If I had more time I would have put the if/else statements for win, loss and draw that are contained in the results.erb file within the game class, however this kept breaking all the tests and I didn't have time to fix it. I also would have implemented a lot more CSS styling to make it look better and more engaging for the user.

The game is fully functioning and all the tests pass, although it needs refactoring as said in the above paragraph!

## Instructions for use

- Fork this repo or clone it to your local Computer
- Run bundle install
- Run 'rackup' in your terminal
- Visit localhost:9292 and follow the instructions on screen

#### Objective
The objective of the game is to beat the computer at a game of rock, paper, scissors. The computer will select one of these options randomly. At the end, you will be told whether you have won, lost or drawn.


Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----

Knowing how to build web applications is getting us almost there as web developers!

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

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
