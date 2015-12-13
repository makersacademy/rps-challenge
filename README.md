<<<<<<< HEAD
# RPS Challenge: Rōnin Badge Test

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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan_november2015 (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

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

=======

![makersacademy](media/ma_logo.png)

**week 3 / weekend challenge**

# The challenge

This weekend challenge is to create a Rock/Paper/Scissor Game using our newly learned skills in Ruby/Sinatra/HTML/CSS.
NOTE: Please excuse the use of Ruby $global variables; we haven't yet touched on databases during the course!

## User stories

```
As a user
So that I can see my name in lights
I would like to register my name before playing the game

As a user
So that I can play my turn
I need to be able to choose one option between paper/scissors/rock

As a user
So that I can play against the computer
I need to be able to see the choice the computer has made

As a user
So that I can see who won the turn
I need to see a confirmation of who won the turn

As a user
So that I can see if the turn was tie
I need to see a confirmation that the turn was tie

As a user
So that I can see who is more likely to win
I need to see a summary of the score for each turn

As a user
So that I can see who won the game
I need to see a confirmation of who won the game when the score reaches 3

```

# Implementation

My implementation was driven by acceptance unit test cycles. The final implementation has 3 classes with defined responsabilities.

## Modules & gems

* yaml
* twilio-ruby


## Classes

### Menu

Menu allows to view all dishes and find dishes from a .yml file. A different file to read the menu from can be passed as argument (the file is located in lib/resources/).
```
menu = Menu.new('pizza_restaurant.yml')
```
It receives the following messages:
* view menu
* find(dish)

### Order

Order allows to store added dishes, review the order with the total price, and place the order. Every instance of Order instantiate a Menu as well (a default menu is passed as argument to menu class).
When the order is placed an SMS is created and the message send is called on it.
It receives the following messages:
* add(dish, qty)
* review
* place

### Sms

Sms allows to send an SMS using [Twilio REST API](https://www.twilio.com/docs/api/rest) passing the method the delivery time.
It receives the following messages:
* send(delivery_time)


## Data

* A .yml file in /lib/resources stores all the menu data
* Twilio tokens are stored in a .gitignored .yml file


## Future improvements

* extract from Order a new class that deals with the stored dishes, has total price and total number of dishes. Order shoul donly deal with the logistics.
* stub the send_text method so that the sms is not sent when testing
* use ENV variables in .yml file
* refactor find, print_menu methods for Menu class
* prevent user from adding the same dish and just increase its qty
* reset order after is succesfully placed
* allow users to order via SMS
* improve refactoring
>>>>>>> 0f6d18755806f1c3d7722e43bda1e1ad394c2070
