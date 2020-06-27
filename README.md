# RPS Challenge

## Progress

###Planning
------------

####Part 1 - Name registration page

User Story:
```
I would like to register my name before playing an online game
```

Required elements:

- Welcome headers.
- "Please enter name" header.
- Input form
- Submit button

Input:        Output:
Name          New page that confirms name
Submit

####Part 2 - /Play page that will host the options
```
I would like to be able to play rock/paper/scissors
```

Require elements:

- Game description headers
- Select options for separate rock, paper and scissors options

Input:      Output:
Rock        Rock,Paper,Scissors - You win or you lose
Paper
Scissors


Game Logic / Page layout

If Rock -       Paper: Lose
                Scissors: Win
If Paper -      Scissors: Lose
                Rock: Win
If Scissors -   Rock: Lose
                Paper: Win


####Project Progress so far.

Step 1 - Setup gems and installed bundles. Created files such as the App.rb, config and first spec test. I also included the rack env requirement for my tests to pass in the spec helper.
I've written my first test and created an index.erb to create the page and pass my first test which is a simple test to display the main header for the page.

Step 2 - I've now created the buttons and created a new /play page that will take the contents of the filled form into the following page. I've written a test to expect the user's name to be taken to the next page and passed this.


Tests created: 3
Tests passed: 3
Test Coverage so far: 100%

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
