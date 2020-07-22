[![Build Status](https://travis-ci.org/cmb84scd/rps-challenge.svg?branch=master)](https://travis-ci.org/cmb84scd/rps-challenge)

## This is my RPS challenge!
This is Makers Academy's week 3 weekend challenge.

### How to use
To use clone this repo and then do the following:
```
run 'bundle'
run 'ruby app.rb'
open browser and go to localhost:XXXX
nb: XXXX is the port number eg 4567
```

### User stories and requirements
These are <a href="#userstories">here</a>

### How it went
Initially it was going well but I ended up not getting very far due an error. I was calling `post` using `value` instead of `method` in play.erb so of course it wouldn't work. During code review the next day, we located the problem which I corrected and all was good again. However, I don't have time to do anymore work on it right now but will continue with it after the course has finished. Even though I didn't get very far it was a good learning experience and I'll definitely be more careful when calling post routes in the future!

##### Edit: 17/7/2020
I now have a working single player game and I'm happy with it. I enjoyed going back to this and working on it as I learnt a lot from doing it. Again, I hit a bit of a problem around the winning logic and following a little help from a fellow Maker, we worked out what I'd done wrong which was not calling a method in 2 places! Once I'd sorted this I then needed to do a few minor amendments such as adding an initialize method to the computer class, to ensure it all worked properly. I then discovered through playing that the result was often incorrect and I worked out this was due to the way I was doing the computer selection. Another minor change mostly fixed this though for some reason it doesn't always pick up it's a draw if you play it multiple times. Not sure why so something to look at, at some point. Overall, really pleased I went back to this as I learnt a lot from doing it.

<a name="userstories"></a>
Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
```
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
