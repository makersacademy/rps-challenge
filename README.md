# RPS Challenge

Instructions
-------

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

[You may find this guide to setting up a new Ruby web project helpful.](https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md)

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
* High [Test coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this at this moment.

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

Notes & Thoughts
----------------------

we now have a basic file structure

the player can enter his/her name and see it displayed

-> capybara feature test
-> update Controller
-> update views
= pass the feature test

we need the player's name to be stored so we can display it back
now it is just an instance variable
I might need to use the Sinatra sessions or, worst-case scenario, the global v...I don't know yet

Now I will focus on test driving the rock-paper-scissor game:

As a player, I can choose rock
As a player, I can choose paper
As a player, I can choose scissors


the opponent - a computer - randomly picks a move from [rock, paper, scissors]

we have different case scenarios :
TIES: player and computer pick the same move!

Player wins

Computer wins

I assume we declare a winner after each game
there are no rounds (like three wins to be declared the winner, but I might add a win_counter or similar to keep track of the victories. I don't know yet.

THINGS THAT DIDN'T WORK OUT
open close principle for the array
how to pass an instance variable as a default parameter

feature test in IRB
After a lot of trial and error, I manage to make the game work when I do a "manual feature test."
I am not as easy with Capibara, yet that's why I did it in IRB
```
Swa@Swas-MacBook-Pro rps-challenge % irb -r ./lib/player.rb -r ./lib/game.rb
3.0.2 :001 > player1 = Player.new("Sarah")
 => #<Player:0x00007fd89c0d9568 @name="Sarah", @p_move=nil, @victories=0> 
 => 
3.0.2 :001 > player1 = Player.new("Sarah")
3.0.2 :002 > game = Game.new(player1)
 => 
#<Game:0x00007f932f8c0658
... 
3.0.2 :003 > player1.choose_move("ROCK")
 => "ROCK" 
3.0.2 :004 > game.fight_outcome
 => "player wins: ROCK beats SCISSORS" 
3.0.2 :005 > player1.choose_move("PAPER")
 => "PAPER" 
3.0.2 :006 > game.fight_outcome
 => "computer wins: SCISSORS beats PAPER" 
3.0.2 :007 > player1.choose_move("SCISSORS")
 => "SCISSORS" 
3.0.2 :008 > game.fight_outcome
 => "computer wins: ROCK beats SCISSORS" 
3.0.2 :009 > player1.choose_move("PAPER")
 => "PAPER" 
3.0.2 :010 > game.fight_outcome
 => "computer wins: SCISSORS beats PAPER" 
3.0.2 :011 > 
```

I implemented the counter for the number of victories.
```
Swa@Swas-MacBook-Pro rps-challenge % irb -r ./lib/player.rb -r ./lib/game.rb
3.0.2 :001 > player1 = Player.new("Sarah")
3.0.2 :002 > game = Game.new(player1)
#<Game:0x00007fd2e897c620
3.0.2 :003 > player1.choose_move("PAPER")
3.0.2 :004 > game.fight_outcome
3.0.2 :001 > player1 = Player.new("Sarah")
3.0.2 :002 > game = Game.new(player1)
#<Game:0x00007fb78d863b88
3.0.2 :003 > player1.choose_move("SCISSORS")
3.0.2 :004 > game.fight_outcome
3.0.2 :001 > player1 = Player.new("Sarah")
3.0.2 :002 > game = Game.new(player1)
#<Game:0x00007f79958796d0
3.0.2 :003 > player1.choose_move("SCISSORS")
 => "SCISSORS" 
3.0.2 :004 > game.fight_outcome
 => "player wins (victories: 1): SCISSORS beats PAPER" 
3.0.2 :005 > player1.choose_move("SCISSORS")
 => "SCISSORS" 
3.0.2 :006 > game.fight_outcome
 => "computer wins (victories: 1): ROCK beats SCISSORS" 
3.0.2 :007 > player1.choose_move("PAPER")
 => "PAPER" 
3.0.2 :008 > game.fight_outcome
 => "player wins (victories: 2): PAPER beats ROCK" 
3.0.2 :009 > player1.choose_move("PAPER")
 => "PAPER" 
3.0.2 :010 > game.fight_outcome
 => "computer wins (victories: 2): SCISSORS beats PAPER" 
3.0.2 :011 > player1.choose_move("PAPER")
 => "PAPER" 
3.0.2 :012 > game.fight_outcome
 => "it's a tie PAPER = PAPER" 
3.0.2 :013 > 
```

so know I will remove the string from the outcome at this should be moved to our VIEWS
and the logic should be added to the controller

But first, let's do some tests.
I was so sure of what I wanted to do, so I didn't manage to test drive it...

I have read about the Open-Close principle, so I guess my RPS_list, which is the list of possible moves, should be an independent class, but I kept it in Game.rb to keep it simple. rb class though it makes my Game class open for modification :(

I have to say I was quite lost with the capybara feature tests; I had no idea where I was going; I spend a lot of time on the game logic and finding out how the elements would work together.
even when a test passed, I had to make lots of amends to use my models logic with the controller.

I didn't manage to format the forms; I wanted the buttons to have another shape etc.
I added the counter a bit later and forgot to test it.

I did test everything in IRB before making amends to the controller

We still have a lot of horrible global variables everywhere, but I hope I will learn to use databases soon to remove them...
