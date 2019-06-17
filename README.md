# Rock, Paper, Scissors Challenge

Makers Academy week three weekend project: build a web app to let users play a game o Rock, Paper, Scissors.

# Incomplete submission.

# Notes

- The computer is using random behaviour to select RPS - the test for this is working properly.

# Installation & Testing

- Fork or clone this repo, and run bundle install.
```
$ git@github.com:josephtownshend/rps-challenge.git
```
- Type rackup on the command line to start the server.
- Navigate to localhost:9292 in a web browser.
- Tests can be run with rspec from the command line in the main project directory.

# Features

- Player enters their name.
- Player's name is returned at welcome screen.
- Button to play game.
- Game is reloaded on request.

# Technologies

- Ruby
- Sinatra
- RSpec
- Capybara
- CSS
- HTML

# Further development

- The user can play in multiplayer mode.
- The user plays against the computer.
- The app determines the winner based on the player's move, and declares the result.

---------------------------------------------------------------------------------------------------
```
2.5.0 :001 > require './lib/game'
 => true
2.5.0 :002 > game = Game.new(player=Player.new("Joe"), computer=Computer.new)
 => #<Game:0x00007fdf0e164780 @player=#<Player:0x00007fdf0e1647d0 @name="Joe">, @computer=#<Computer:0x00007fdf0e1647a8>>
2.5.0 :003 > game
 => #<Game:0x00007fdf0e164780 @player=#<Player:0x00007fdf0e1647d0 @name="Joe">, @computer=#<Computer:0x00007fdf0e1647a8>>
2.5.0 :004 > computer.computer_choice
 => nil
2.5.0 :005 > computer.computer_move
 => :scissors
2.5.0 :006 > player.player_move(:rock)
 => :rock
2.5.0 :007 > game
 => #<Game:0x00007fdf0e164780 @player=#<Player:0x00007fdf0e1647d0 @name="Joe", @player_choice=:rock>, @computer=#<Computer:0x00007fdf0e1647a8 @computer_choice=:scissors>>
2.5.0 :008 > game.winner
 => "Player wins"
2.5.0 :009 >
```

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
