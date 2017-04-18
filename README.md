# RPS Challenge

Author: Robin Heathcote

Approach
-------

For this challenge the User Story required a game of Rock, Paper, Scissors that could be played online. The player wanted to enter their name to start the game, chose a weapon and see if they had won against a computer opponent. It uses the DSL 'Sinatra' to make the Ruby code accessible and the program was test driven in the London TDD style using RSpec and Capyabara.

The program consists of Models, Views and a controller. In the controller, the user is first pointed to the index view where there is a form to enter your name and enter a weapon. These parameters are stored through a post request to '/choose' as a player1 for the game and a new instance of a game is created. The player sees a confirmation of their weapon and clicks a button to see if they have won. The player is moved to the result path. Whilst this is happening the methods random_opponent and result are called on the game class. The first method generates a random weapon for the computer, and the second method checks for the winner. The winner is then displayed on the result view and the player can then choose to play again.

Feature test
-------
A player is created with a name and weapon. A round of the game is created. A random weapon is chosen for the opponent. It checks if this weapon is stored as the opponents weapon. It calls result to see who wins the game.

```
2.2.3 :001 > require './lib/round.rb'
 => true
2.2.3 :002 > require './lib/player.rb'
 => true
2.2.3 :003 > kanye = Player.new('Kanye', :rock)
 => #<Player:0x007fe88b00f188 @name="Kanye", @weapon_choice=:rock>
2.2.3 :004 > round = Round.new(kanye)
 => #<Round:0x007fe889813228 @player_1=#<Player:0x007fe88b00f188 @name="Kanye", @weapon_choice=:rock>, @player_1_weapon=:rock>
2.2.3 :005 > round.random_opponent
 => :scissors
2.2.3 :006 > round.player_2_weapon
 => :scissors
2.2.3 :007 > round.result
 => "Kanye"
 ```


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
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
```

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you submit a pull request, and you can also get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.
