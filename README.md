# RPS Challenge

Goal: To be able to develop a web app for playing rock/paper/scissors game.

Sub Goal: Be able to execute a feature test which displays a web page that say 'Welcome to Rock/Paper/Scissors'(Creating the home page, displaying the name of the game)

Steps taken:
1) run the bundle install
   validate: Bundle runs successfully
2) Created a features folder inside the spec folder then created a homepage_spec.rb file inside features folder
3) wrote down a feature test for accessing the homepage
4) Run the rspec with following errors

    Error 1       Failure/Error: visit '/'

          ArgumentError:
            rack-test requires a rack application, but none was given
  Fix:

  * one update here, I forgot to mention that I also created the app.rb file inside the project folder to store my code to run the server.
   created a config.ru inside the project folder and then added the following code inside the file
        require './app.rb'
        run MyApp

     Also added the following lines inside the spec_helper.rb
        capybara.app = MyApp
        require File.join(File.dirname(__FILE__), '..', 'app.rb')

  validate: When I ran the rspec above mentioned error removed.

     When I ran rackup command it started the server.

   Result: Feature test passed and my web home page is displaying the message.

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
