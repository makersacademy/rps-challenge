Download and run:
```
$ git clone git@github.com:anaalta/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
The domain model contains 3 CRC cards and a controller:
**User class** - has name attribute and can choose an option(rps)
**Computer class** - randomly choses an option from Rock, Paper, Scissors (a constant declared within the class).
**Options class** - it contains the rules of the game as a hash; it has an attribute, result and a method - winner - with two arguments - option 1 and option 2. The method compares the options and returns the result (draw, option1 wins, option2 wins).
**The controller** - takes you to an index page that has a form and asks the user to insert their username and click the register button, as in the photo below:

![Image of takes_username](https://drive.google.com/open?id=0B9NojpN8a8wmWTI2OEhyRDB5d3M)

After registering their name, the user's name is printed and three choices are offered in the form of radio buttons. The user selects one, but then it has to click a 'Submit your choice' button.
![Image of takes_username](https://drive.google.com/open?id=0B9NojpN8a8wmQXJSaHZRVGJhd0k)

The user is then redirected to a page which prints out user's choice, the computer's random choice and the result of the game.

![Image of a win ](https://drive.google.com/open?id=0B9NojpN8a8wmZkZFNkVRci01djg)

![Image of a draw ](https://drive.google.com/open?id=0B9NojpN8a8wmV3lqc1pubmhsb2s)

![Image of user loses ](https://drive.google.com/open?id=0B9NojpN8a8wmcUdzMElTODJ5WGc)

Bellow, see the challenge instructions and user stories:

_________________________________________________________________
=======


# RPS Challenge

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

- *the marketeer should be able to enter their name before the game"*
- *the marketeer will be presented the choices (rock, paper and scissors)*
- *the marketeer can choose one option*
- *the game will choose a random option*
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
