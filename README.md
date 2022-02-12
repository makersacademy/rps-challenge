# RPS Challenge

Client brief
-------

The Makers Academy Marketing Array ( **MAMA** ) have asked me to provide a game for them. Their daily grind is pretty tough and they need time let off some steam.

My task was to provide a _Rock, Paper, Scissors_ game for them so they can play on the web.

How to run this program
-------
* Follow this [link] (http://localhost:9292/) to the game.
* Click on 'Enter'
* Fill in your name




Approaching this challenge
-------
**User Stories**
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


Given the user stories and functionality hints above my first step was to create a process diagram to help me think about how I was going to put this website together. I used Miro to create a *very* messy diagram that helped me plan and visualise how my MVC workflow was going to make my website work.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
For my first user story I decidec to make my homepage a welcoming page inviting the user to play 'rock, paper, scissors' by clicking the 'enter' button. My reasoning for doing this instead of getting straight into the sign-in page was that this would make it easier for me to add new functionality such as letting the user choose if they wanted to play against the computer or against a friend.

Once that was implemented I then created a sign-in page let my user fill in their name and fulfill this user story.




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
