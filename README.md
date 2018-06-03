# RPS Challenge


Irb

gadishas-MacBook-Pro:rps-challenge gadishazerari$ irb
2.5.0 :001 > require './lib/player.rb'
 => true
2.5.0 :002 > require './lib/game.rb'
 => true
2.5.0 :003 > player =Player.new('Gadiza')
 => #<Player:0x00007fb432038b88 @name="Gadiza">
2.5.0 :004 > game = Game.new(player)
 => #<Game:0x00007fb43114a8b0 @player1=#<Player:0x00007fb432038b88 @name="Gadiza">, @computer_pick=["Rock", "Paper", "Scissors"]>
2.5.0 :005 > game.player_move('Rock')
 => "Rock"
2.5.0 :006 > game.computer_choice
 => "Scissors"
2.5.0 :007 > game.result
 => "Rock beats Scissors, you Win!"
2.5.0 :008 > game.player_move('Paper')
 => "Paper"
2.5.0 :009 > game.computer_choice
 => "Paper"
2.5.0 :010 > game.result
 => "It's a Draw!"
2.5.0 :011 > game.player_move('Scissors')
 => "Scissors"
2.5.0 :012 > game.computer_choice
 => "Rock"
2.5.0 :013 > game.result
 => "Rock beats Scissors, You Lose!"


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
