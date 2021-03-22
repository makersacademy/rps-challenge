*As a marketeer*
*So that I can see my name in lights*
*I would like to register my name before playing an online game*
---------------------------------------------------------------

- Difficulty setting up rackup, consulting https://github.com/teamcapybara/capybara#setup definitely helped.

-  '1) register name register user name
     Failure/Error: expect(page).to have_content('Cadbury')
       expected to find text "Cadbury" in "vs. player_2"'
having an issue with this. This was due to a syntax error - session[:player_1_name] was the correct syntax not session alone.


*As a marketeer*
*So that I can enjoy myself away from the daily grind*
*I would like to be able to play rock/paper/scissors*
------------------------------------------------------

*the game will choose a random option*
---------------------------------------

- 1) starting a round of RPS RPS-A-TRON 5000 chooses Slicing Scissors
     Failure/Error: click_button 'Slicing Scissors'

     Capybara::ElementNotFound:
       Unable to find button "Slicing Scissors" that is not disabled

Unsure why this error is being thrown up -- needed to sign_in_and_play

- defined a method called random_weapon in gameplay_spec - it passes the test but I need to implement into my play.erb

- realised the above was silly so I am creating an opponent class which handles this random_weapon method which calls .sample on an constant with available weapons

- settled for srand for random feature test, this ultimately clashed with previous test so that has been removed

- uninitialized constant RPS::Opponent error upon loading. require opponent in the controller doesn't seem to work

- had to use require './lib/opponent.rb'


*a winner will be declared*
----------------------------

- Difficulty trying to set up let test result scenarios in rspec, unable to get my hash to pass without syntax error

- had to include my params from the controller (player_1_name, weapon, pc_weapon)

- Adding nested if statements, but they look messy - aiming to find a solution that looks tidy and DRY and I can't quit get it to work

- settled for a constant named WEAPON_RIVALS of each weapon and their weaknesses/strengths

- undefined method (win, lose, draw) for hash WEAPON_RIVALS doesn't seem to be working

- reverting back to if statements but still can't get it to work



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
