# RPS Challenge

Comments: 
I was able to complete the first user story. 

When it came to the second user story it was clear that it needed to be divided up into several user stories based on the 'Hints on functionality' listed below. With this in mind I attempted the next steps using the following user stories: 

-

Hints on functionality: The marketeer will be presented the choices (rock, paper and scissors)

As a marketeer 
So that I can select a choice of rock, paper and scissors
I would like to be presented with the choices of rock, paper and scissors

I was able to complete this section and make buttons that allowed the player to see their choices.

-

Hints on functionality: The marketeer can choose one option

As a marketeer 
So that I can choose an option 
I would like to be able to select one of the options presented to me 

It was this part I found tricky because I managed to get the buttons going through to the '/result' webpage but I couldn't figure out how to link the buttons to the game.rb code and present a result. I think the issue lies with the game.rb code not being able to define a winner between ther computer and the player just yet. 

-

Hints on functionality: The game will choose a random option

As the computer 
So that I can go up against the player
I would like to be able to given a random choice of rock, paper or scissors

I attempted to code this in game.rb and wrote a unit test for it but also couldn't quite figure this out. 

-

Hints on functionality: a winner will be declared

As a Player 
So that I can know if I've won the game 
I would like for a winner to be declared 

This was not attempted due to the above not being complete. Although I did start on the result.erb webpage and plan on adding a line that says who the winner is, which will most likely come from the game.rb code. 

--

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
