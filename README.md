# RPS Challenge

Approach
-------

* With the amount of diagram modelling done in the past few weeks, setting up the diagram for this particular challenge was surprisingly easy and quick.
I paid special attention to routing, since it's something relatively new for me. In the end I decided to include extra GET routes to clean up the controller.

* I tried following the TDD/BDD principle, but it turned out to be quite difficult for the following reasons:
- The fact that Capybara/Sinatra are technologies I learned in the last few days, so I'm not as comfortable with them as with vanilla RSpec
- The amount of files we are dealing with, paired with wanting to implement most features from the very beginning (the MVP was reached at a quite late stage)
Overall I'm pleased with my TDD approach, but I feel like I could have done a bit better with more time


Personal review
-------
* Overall I am pleased with the outcome of my program, considering the scope of the project and the time I had to complete it.
* I managed to implement all the user stories and bonus challenges:
- The players can input their names
- If no name is given, the player will default to a Bot.
- If 2 names are entered, the game will run in multiplayer mode.
- The players can select their weapon of choice, including Spock and Lizard
- The result is calculated and the winner is shown on screen, along with the players' weapon of choice

* One of the most challenging aspects was to follow the TDD approach and I definitely believe that there is room for improvement there.
* I am also quite pleased with my debugging approach and speed. RSpec and the error messages have sped up the time it takes me to locate and fix bugs.

* Given more time I would like to spend time adding CSS and HTML features that I thought of, but unfortunately didn't have time to implement.
Although I managed to cover most edge cases, I would also add a few additional tests


Instructions to run the program
-----

* Fork this repo and clone it to your local files
* run ```bundle install``` inside the directory
* run ```rackup```
* visit ```localhost:9292``` in your browser

Author
-----
Carlos Trapet

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
