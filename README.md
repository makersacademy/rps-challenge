# RPS Challenge


 Intro
 ---------
This is the third weekend challenge of the Makers Academy course. This week has been focused on the web, which has been our first introduction to embedding code in HTML.
The challenge was to build a simple implementation of a Rock Paper Scissors game, as described in [Task](#task) below. I've tried to use an MVC approach.


 The Code
 -------
 - The controller of the app is saved in the app.rb file, with views in the views folder written in HTML/erb and the model itself written in ruby.
 - The ruby model has Game and Player classes
 - Players have a name and a choice associated with them
 - The name is set at instantiation but the choice is only set when one of the pick methods is called
 - Game objects have two player objects passed in at instantiation
 - To allow for saving user information, a Game object is saved into a class instance variable in the Game class
 - For the full flow of user/client/server interactions, see [this sequence diagram](docs/diagram.svg)


My Approach
 --------
 - Built in ruby and HTML/erb, using sinatra for the hosting, and rspec and capybara for testing.
 - I tried to use a TDD approach when coding this challenge, and set the app up with an MVC approach.
 - I started off by converting the user stories given into a [sequence diagram](docs/diagram.svg), which I then used as the basis for a [domain model](docs/domain_model.md).
 - I wrote a few of the feature tests first, then set about writing unit tests and the ruby, once the routes I had became more complex and started to interact with the model more  


 New Learnings
 ---------
 - This was the first web app I've built without step by step guidance (as in the pairing challenges)
 - It was also my first use of a class instance variable

 Issues Encountered
 --------
 - I was a little troubled by the setup, but once I made sure I was using the right version of ruby I got it working
 - For some time the 'Start playing' button wasn't working on the website, although capybara was able to select it and pass tests. Eventually I realised I hadn't closed the input tag, and once I did that it worked.
 - Testing that the right result was put to the website was a little tricky, but since there were unit tests for having the correct response to result, I decided to just check that the result was being displayed. There is some coupling there involved in the testing but the other alternatives would have had the same.


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
