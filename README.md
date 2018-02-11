README Edit: My approach and code review
=================

My approach
------
* First, I read through the User Stories and functionality hints and drew the Domain Models in tables in order to have a clear idea about the main objects and messages of the app.
* Then, I drew a sequence diagram focusing on what happens after every step in the app, e.g.: the user enters a name, then the options (Rock, Paper & Scissors) are shown. After that, the user chooses one of the three options, the computer also chooses one at random and, finally, the winner is displayed on the screen.

Regarding tests, I first created the following feature tests:
1. **Infrastructure test**: to make sure everything was set up correctly
2. **Player name test**: to allow the player to enter the name before the game
3. **Choices test**: to allow the player to choose among the different game options and to make sure the option is displayed on the screen

Up to this point, I stored user input (name and choice) in sessions (enabled in controller file for Sinatra).

Next: after making sure these features work as intended, it was time to *introduce new classes* (player and game), *delegate responsibilities* from the Rps class to them and *refactor controller sessions*, allowing variables and instances to hold data in between requests.

4. **Random choice**: used .srand Ruby method to return the same play every time and be able to output computer's choice in the test, but in the browser it changes every time.

5. **Winner declared**: displaying the winner on the browser based on who won the round. Again, used the .srand Ruby method to return *Scissors* as the computer's choice and be able to display the player as the winner (choice: *Rock*) 

Next focus
------

* I started to include some more CSS in my project, but definitely I would have worked on styling it better if I had more time.

[TBC]

Personal code review
------

* I have the feeling that I have improved a lot in the technical part, but I still struggle to organise my train of thoughts.
* I find myself going over and over again the same things and jumping between tests, writing code first, or realising that my tests were not really useful.
* I try to let myself be driven by TDD, but sometimes I realise my tests are driven by my code.
This happened especially after changing the game mode to allow two players to play, when I had to change tests and the controller.

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
