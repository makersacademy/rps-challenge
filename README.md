# RPS Challenge

How to use this webapp
---------

```
$ git clone git@github.com:scass91/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
The app should now be available in your browser at localhost:9292
```

My approach to this challenge
---------
* Use user stories to build file structure and think about how I want them to interact with one another
* Build a test for a method I want, let it fail, then write the code and rework until it passes - using the TDD process learned in week 1 at Makers Academy
* Two items were present in the user stories - Game & Player
* Used the user stories info to build these classes, for example the player had the ability to select a random attack from R/P/S
* Ran feature tests every step along the way to make sure the code was doing what I wanted it to be doing, and the tests weren't just passing by accident
* Effectively used the given tests to gain 0 rubocop infractions & 100% test coverage
* One of my favourite TV shows makes an appearance in the video at the start!

![Imgur](https://i.imgur.com/3EGHNY1.png)
![Imgur](https://i.imgur.com/yFXPBip.png)
![Imgur](https://i.imgur.com/zo6PCBN.png)

An example of how the program can be run in irb
---------

```
Simons-MBP:~ simon$ cd projects
Simons-MBP:projects simon$ cd rps-challenge/
Simons-MBP:rps-challenge simon$ irb
2.5.0 :001 > require "./app.rb"
 => true
2.5.0 :002 > p1 = Player.new("Simon","rock")
 => #<Player:0x00007fc6702b8660 @name="Simon", @options="rock">
2.5.0 :003 > p2 = Player.new("Computer","scissors")
 => #<Player:0x00007fc6702e0480 @name="Computer", @options="scissors">
2.5.0 :004 > g = Game.new(p1,p2)
 => #<Game:0x00007fc6708a4a10 @player_1=#<Player:0x00007fc6702b8660 @name="Simon", @options="rock">, @player_2=#<Player:0x00007fc6702e0480 @name="Computer", @options="scissors">>
2.5.0 :005 > g.result
 => "Simon wins!"
```

Future direction
---------
* Implement full multiplayer functionality
* Implement further weapons in the form of Rock, Paper, Scissors, Lizard, Spock
* Improve how the app looks by adding more graphics/CSS styling

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
