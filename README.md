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

Sara Rancati - 2 November 2019
----------------------
Development process:

I have first set up folders and initial files.

1. First user story:
the user would like to register their name before playing. I created a feature test to check that the home page displays a welcome message. I then implemented this in my index.erb and starting adding routes to my app.rb file. Second feature test was to check that, after entering names, some text with the name would be displayed on the page. For this I had to include a simple form in index.erb with both a text field (for the name) and a submit button. The form would 'post' to a different page (/names), where I would be able to take the name param from the previous step and store it in a session. From the /names page I redirected to another page (/play) where the session variable would be assigned to an instance variable. This page would use the play.erb template to display the text with the name. Tests passed.

*2nd commit*

2. Second user story: on the second page, the player will play rock, paper, scissors. I'd like to implement this using buttons instead of text for the user's input. I wrote a feature test for the three buttons then implemented in the play.erb template.

*3rd commit*

At this point I worked on the "logic" of the game, starting from simple unit tests (e.g. returning a random choice from the computer, rock beats scissors etc).

*4th commit*

Then I updated the commander to store the session variable (user's input) to be used as first argument in the method "winner" (the second argument is the computer-generated choice). I did some manual tests as well at this point, and fixed errors.

*5th commit*

I refactored the model to make some methods shorter.

*6th commit*
