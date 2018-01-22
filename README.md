[Scenario](#scenario) | [Approach](#approach) | [Experience](#experience)  |  [Education](#education)
| [Interests](#interests) 


[![Build Status](https://travis-ci.org/Tagrand/rps-challenge.svg?branch=master)](https://travis-ci.org/Tagrand/rps-challenge)



# Rock Paper Scissors


## Scenario <a name= "scenario"></a>

You are one spec in what feels like a large infinitely large universe, inhabiting a mere fraction of the Earths history, which in itself is only a tiny segment of the lifespan of the Universe. It can feel pretty daunting can't it?

Well take your mind off it by playing a game that is essentially a game of chance (especially if you play the computer...)

## Approach

I set myself 4 targets starting this challenge 
  
   - *Never* use a global variable 
   - Build one feature at a time 
   - After passing tests, make sure they also fail for the **right reasons** 
   - Focus on extendability in design.
   
I've focused alot on TDD and BDD over the past few weeks, and this week I found it much more natural. I've started seeing the benefits - debugging is easier as I'm working in smaller cycles, theres less issues to spot and naming tests carefully indicates clearly whats gone wrong. I also found doing one feature at a time helped structure my appraoch and keep my focus tight. I started with a site that could hold your name, then a site where you could pick rock, then one with three options, then one which told you win or lose. I found this helped structure my thoughts, and focus on just passing my tests. 

Keeping the design extendable was the biggest challenge. Over the weekend the more I worked, the more useful I found it though. For example, you can do some pretty fun solutions to deciding who wins rps which are heavily tied to 3 inputs, but its much harder to debug. I found extendable functions/programmes are much easier to debug (as responsibilities are clearer so faults can be found more easily) and push you minimise over dependency between classes. 

## Extention

If I'd have had more time, then I would have done 4 things 
1) Created a game pack class (which works out winners with its rule book) to make it more extendable as you could just bolt in different game packs into the programme and have lots of variations of RPS.
2) Added a second page for player 2 to input choices in. As, it seems silly to have the same page. 
3) 

I would also be interested to see if there are better ways of structing my classes, adding a printer class for my results and a gamebook class so you could plug in lots of different games into the programme. 


##

## Instructions
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
