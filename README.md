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

--------------
# Plan for completeing the task

#### Website Side

get '/' - form to enter a name  pointing to post '/name'

post 'name' - save name in a session redirect to get '/move'

get '/move' - option to pick more (R,S,P) pointing to post '/selected_move'

post '/selected_move' - save selected, redirect to get '/result'

get '/result' - interact with code to find out result, shows result
                option to return to get '/move'


#### Code Side

\#computer move - Array.sample
winning hash [R: S, P: R, S: P]
\#result(player move)

### Comments About Used Resources

mostly for checking syntax, I used the repository made for the battle (this weeks afternoon challenge) and also [Tristian's Birthday App one](https://github.com/tristanlangford/birthdaygreeterV2) for the RPS selection HTML syntax.

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

### Plan

On name page have two names in the form (if player_2 is nil then run single player)
if multiplayer run similar code but on two separate pages ask of a user move.
Then compare using the same hash to find out the winner, button to play again

### Changes

This went ok, but did refactor the model into a Game class holding the player names and moves.

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

### Plan

option on start to play RPSSL
add the addition options to the winning hash, and in computer move - RPSSL random_move

### Changes

No real changes but was a little stumped about the return value from #random_move before realising than an if statement also returns a value, so I had to explicitly return a value if rpssl wasn't chosen.

--------------

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
