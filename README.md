# RPS Challenge

Introduction
------

Welcome to the Rock, Paper, Scissors, Spock, Lizard challenge! Written in Ruby on top of Sinatra. 

Instructions for use
-----

Either go to [heroku](https://rps-challenge-spock.herokuapp.com/) or do things the hard way:
- Make sure you have `ruby-2.5.0` installed
- `bundle install` to ensure you have all the gems
- `rackup` to launch the page. Default port is 9292, so you can go to `localhost:9292` in your browser to play.

Approach
--------

Challenge instructions are below. The app was built using strict TDD and the red-green-refactor cycle.
- All `RSpec` tests pass, as does `Rubocop` and there is 100% coverage. 
Both of the bonus extensions have been completed, converting the app to be multiplayer and extending with the 'Spock & Lizard' rules. 
The key design decisions taken were:
- To avoid logic in the `app.rb` class, the creation of a `Game` class
- `Game` has responsibility for orchestrating the game i.e.
    - instructing the pieces to compare themselves and reach the resolution of a game
    - generating the appropriate message to the participants on conclusion
    - resetting the game state when players wish to have another game
- To avoid the use of a global variable, Game is a static class with class instance methods and variables
- To keep the `Game` classes responsibilities light, I decided to handle 'weapon' comparisons in their own class:
    - Mindful of the extensibility required for the Spock and Lizard bonus challenge, I decided to use inheritance to accomplish this
    - (Also from a desire to play around and get more experience with (singleton?) classes)
    - There is an abstract class, `Weapon`, which contains all the methods for comparisons with other weapons
    - Each weapon (`Paper`, `Scissors` etc.) is a subclass of `Weapon` and simply overrides two instance variables showing what weapons they win and lose against
    - This allows the rules to be extended extremely easily in a couple of lines of code. 
    - All subclasses are grouped and tested in the main `weapon.rb` file for convenience. 
- Although this meant completing the bonus challenge was relatively simple, I did encounter many wrinkles when working with class Constants like this
    - For example, the object comparison has to be done with string representations, to avoid `UninitializedConstant` errors, which was disappointing and not as neat as I was hoping for
- I considered a separate `Print` class, but ultimately the `Game` class was pretty light as it stood and there was only a single printing requirement which may not justify the additional abstraction.
- Likewise I considered a `Player` class, but ultimately this would just be a container for `name` and `weapon` instance variables as all the legwork is done in the `Weapon` class
    - I therefore decided that this functionality could just as readily be accomplished by storing these two variables in a session


Challenges
----------

- Difficulty in working with class Constants, as described above. Probably not best practice?
- Returning to the same .erb file (and using `if` statements to show/hide content) caused more trouble than it was worth in the end, so I ended up using more .erb files than originally anticipated. 
    - Need to ask about what best practice is here - simpler `app.rb` at the price of more html duplication between `erb` files? 
- During large refactorings (e.g. switching from an AI to a human 2nd player), I still found it difficult to stick to strict TDD given the sheer number of changes. 
    - Doing the work 'all at once' feels faster, whereas the alternative seems to be multiple refactorings on top of refactorings as a small piece of the changes is moved, everything is refactored, then another small piece is moved etc.
- Attempted at the beginning to do a UML message diagram and didn't find it that clear to accomplish at all
    - In the end, structure was dictated by TDD and the user stories, rather than a 'grand plan'
- Being completely new to CSS, I still find it relatively difficult to make things move where I want. 
    
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
