# RPS Challenge

## Ruby Version

Ruby 2.6.5

## Gems

* Capybara
* Rspec
* Rubocop
* Simplecov
* Sinatra

## Notes on the challenge

Both user stories have been completed, with 100% test coverage. Bonus level 1 (multiplayer) has also been completed.

The design of the app is as follows:

* The homepage ('/') prompts the user to choose single- or multi-player mode.

_Single-player mode_

* Once the user has chosen the single-player game mode, they are taken to '/single_player', where they enter their name via a web form that submits a POST request to '/submit'.

* '/submit' creates two new Player objects; the user and the computer (_note - the Player class has a name attribute that defaults to "Computer" if the user does not enter a name in the web form_). A new Game object (@game) is also created, making use of class instance variables; the players are stored as attributes of @game. '/submit' then redirects the user with a GET request to '/start_game_sp'.

* '/start_game_sp' prompts the user to choose one of three options; rock, paper or scissors. Clicking on one of these buttons will submit the choice via a webform with the name of the weapon as a parameter, with a POST request to '/choice'.

* '/choice' stores the user's choice of weapon as an attribute of their player instance. It also calls on a RandomWeapon class to choose the computer's weapon, and then redirects to '/result' with a GET request.

* '/result' calls on a Calculator class to work out the result of the match. It then calls on a ResultPrinter class to generate the text showing the user who has won. Finally, it contains two buttons, giving the user options to play again or return to the main menu. Choosing play again means that the user does not have to choose the game mode or enter their name again, as the user is redirected to '/start_game_sp'.

_Multi-player mode_

Multiplayer mode uses as much of the architecture for single-player mode as possible - in particular, '/submit', '/result' and '/restart' are shared by the two game modes. Where the paths diverge (for example, where both players need to choose weapons) the 'single_player?' method of the Game class is used by the app to determine which route to take.

* If the user chooses multi-player mode, they are taken to '/multiplayer' where the players are prompted to enter their names via a web form that submits the data as parameters of a POST request to '/submit'.

* Submit operates as above; as there are two names submitted then the instances of Player that are created are user instances. The other difference is that the user is redirected to '/start_game_mp'.

*  '/start_game_mp' prompts player 1 to choose a weapon, and operates the same way as '/start_game_sp' above, except that the information is submitted as a POST request to '/p1_choice'. '/p1_choice' stores player 1's weapon and then redirects the user to '/player_2_turn', which prompts player 2 to choose a weapon. Similarly, player 2's choice is captured on '/p2_choice' which redirects to '/result'.

* '/result' operates as above.

## Reflection

I've tried to apply as many lessons as possible from the previous weeks, including:

* SRP - trying to ensure that classes and methods are minimal and only do one job.
* Keeping code DRY, using helper methods where appropriate (see below).
* Use of the POST/redirect/GET pattern.
* Using class instance variables to allow data to persist (rather than global variables).
* Keeping the controller as skinny as possible.
* Using test doubles where appropriate.
* I did not find a need to make use of dependency injection for this project.

I think the code can be improved by:

* More classes. I'm not sure, for example, that the player class should be storing both the player's name and their choice of weapon.
* Using symbols rather than strings. I tried using symbols initially but ran into some syntax errors when using test doubles. I have not tried to refactor this, simply because of time constraints.
* Better HTML design. I've used some basic HTML syntax to help improve the layout of the view pages, but again due to time constraints, I haven't had a chance to really dig into this.
* I'm not certain whether my use of helper methods (see lib/helper_methods.rb) is best practice. I created those instead of using Sinatra filters as I couldn't get filters to work for certain aspects of the code. The main problem was that @game is not created until after the player has entered their name, and so methods of the Game class can't be called early on in the program (so a before block would throw up errors as those methods can't be called on an instance of nil).
* Better design - I refactored to make it multiplayer and built without really considering the design in any detail, so it may not be optimal.
* I could clean up the code a bit, I think there's a bit of duplication for player 1's weapon choice (duplicated over the single-player and multi-player game modes).

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
