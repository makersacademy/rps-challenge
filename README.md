# RPS Challenge

Approach
-------
This time round I gave myself way more time to plan and diagram. It turns out it's super helpful (who knew, right?). I diagrammed, storyboarded, and designed interfaces which ended up making the whole process a lot smoother than last weekend ヽ༼ಠل͜ಠ༽ﾉ

![evidence of diagramming](https://github.com/elliewem/rps-challenge/blob/master/IMG_0382.PNG)

My main direction in this task was to have three classes; the computer, the player, and the game. The player would be responsible for maintaining their 'wins' and name, the computer would be responsible for their weapon choice and 'wins', and the game essentially did everything else. In hindsight, it would have been a good move to pass some of the actual game logic into a separate class as I found that it got a little messy juggling all the private methods.

How to use
-------
* Clone this repo
* Direct your terminal to the repo and:

```
$ git clone https://github.com/elliewem/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
* Direct your browser to the server
* Enjoy

In case you don't want to do that
-------
Here are two videos showing a win and a lose. (My laptop really hated screen recording and running the programme at the same time, sorry for the lag).

<a href="https://youtu.be/tRXEF5BzXAw
" target="_blank"><img src="http://img.youtube.com/vi/tRXEF5BzXAw/0.jpg"
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>

<a href="https://youtu.be/J36VoLHBmxE
" target="_blank"><img src="http://img.youtube.com/vi/J36VoLHBmxE/0.jpg"
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>


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
