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

# My approach
-------

Set up the infrastructure with all the necessary Gems, config.ru and test environment in the spec_helper.rb file

Create the app file with an initial basic route '/' and test if the server was responding to a first basic request.

Start designing the first page '/', its view (index.erb) should have a standard greeting message and a form to insert the name of the player and send a post request to the '/name' route.

To test the correct routing, firt feature test created to test if the '/name' route contains certain text.

Create a Player class in order to store information such as the player's name and use it as a variable, enable sessions to temporarely store the params from one route to the next one.

The '/name' route is a post request, so we end with a redirection to a new get route '/play'. In this page a new form contained in the play.erb view allows the player to select their next move clicking on one of three available buttons (Rock, Paper, Scissors). All this was previously tested to see that in the new route '/move' it was possible to see the selected weapon.

At this point it was necessary to have the computer select its weapon, so a new class was necessary for it. Folowing the usual TDD process, created new test and a new Computer class which has a default name "Archaon" and a class method #choose that allows to randombly pick a weapon from the constant WEAPONS (symbols' array). 

Once the above was passing all the test and it was possible to store the Computer's weapong, it was time to introduce a new class Game to refactor some of the code and move elements away from the controller.

Game class objects instantiate with two players (player and computer for now, but it would be easy to allow for a second human player with just a few changes to the controller).

It is also in the Game class that the method to calculate the winner is created, using another constant RULES where each key corresponds to the player's choice and the corresponding values is the weapon that each key will beat. 

The idea to check the final result was to have the controller just calling a final view page that depended on the result of the match, hence it was the Game object to make all the calculations and return the result as a symbol (:win, :loss or :draw) so that the '/result/ route would call the appropriate final view (win.erb, loss.erb or draw.erb).

A final refactoring was done to expand the weapons to include also Lizard and Spock. New tests were added, the new weapons were added in the play.erb view as new buttons, the values were added to the WEAPONS constants and the RULES constant was updated to reflect the new combinations. The #check_result method also needed an update to account for the fact that each weapon now was able to win against two other weapons.

# Areas of improvement
-------

I think with the Game class created I am already on a good path to allow a second human player to participate in the game, it is something that it could be interesting to explore

Giving the app a better looking interface with some CSS is something that I'd like to do in the future.

Test: I'm still not sure about some of the tests, I'm not sure if you can do any mocking with Sinatra and to check my final '/results" route I had to insert some common text in all three final views (win.erb, loss.erb, draw.erb) so that I could tell the test to check if that page contained "Les jeux sont faits" 