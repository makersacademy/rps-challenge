# Usage

Visit:
https://possessed-wizard-2975.herokuapp.com/

Alternatively, download the files in the repo and run via a Sinatra server on your local machine. The controller is contained in 'app.rb' in the root directory.

```
ruby app.rb
```

To play the game, enter the number of players and then player names. If playing one player, you will be pitted against a computer opponent.

I'm sure the classic version of this game is familiar to you, but perhaps you haven't heard of the alternative version available here. The rules can be explaned in this infographic:

![RPSLS](https://github.com/forty9er/rps-challenge/blob/master/Rock_paper_scissors_lizard_spock.png)


### TODO

* Remove Global variables (replace with session cookie).
* Define a Computer class and extrapolate computer logic - the game doesn't need to know if there is a computer player.
* Remove repetition of weapon's list (currently and array and hash).
* Put that controller on a diet!
* Remove redundant tests.
* More CSS/styling.


### Technologies used

* Ruby
* HTML
* CSS
* Sinatra
* TDD (via Rspec & Capybara)
* Heroku


# Original instructions

## RPS Challenge: Rōnin Badge Test

Instructions
-------
* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan_september2015 (if you haven't already)
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

Note that you can replace `Coveralls.wear!` with  `SimpleCov.start` to get coverage stats locally
Then run `open coverage/index.html` from the command line to view details

