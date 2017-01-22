# RPS Challenge

Instructions
-------
Run the app from the command line to start Sinatra,
```
➜  rps-challenge git:(master) ✗ ruby app.rb
[2017-01-22 16:51:40] INFO  WEBrick 1.3.1
[2017-01-22 16:51:40] INFO  ruby 2.2.3 (2015-08-18) [x86_64-darwin16]
== Sinatra (v1.4.6) has taken the stage on 4567 for development with backup from WEBrick
[2017-01-22 16:51:40] INFO  WEBrick::HTTPServer#start: pid=75322 port=4567
```
N.B. I did refer to the walk-through https://www.youtube.com/watch?v=GoHKmartBYo&t=798s

Here are the user stories, followed by the game steps

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
In the browser under `http://localhost:4567/`

- the marketeer should be able to enter their name before the game

![](https://github.com/Putterhead/rps-challenge/blob/master/US1submit__form.png)

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

- the marketeer will be presented the choices (rock, paper and scissors)

![](https://github.com/Putterhead/rps-challenge/blob/master/US0utensil_options.png)

- the marketeer can choose one option

![](https://github.com/Putterhead/rps-challenge/blob/master/US2tool_confirmation.png)
- the game will choose a random option

![](https://github.com/Putterhead/rps-challenge/blob/master/US3Game_choses_randomly.png)
- a winner will be declared

![](https://github.com/Putterhead/rps-challenge/blob/master/US4winner_is_declared.png)

_I didn't manage to complete the Bonus levels yet_

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
[Coveralls] Some handy coverage stats:
  * spec/features/play_spec.rb => 100%
  * spec/features/register_spec.rb => 100%
  * spec/gamebot_spec.rb => 100%
  * spec/turn_spec.rb => 100%

```
