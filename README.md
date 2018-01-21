# RPS Challenge

Instructions
-------

In order to play Rock Paper Scissors, you need to do the following steps:

1. In Command Line run the app using : ruby app.rb
2. On your web browser, type localhost:4567 and press Enter
3. On the Homepage, please write your name and click on the button Let's play!
4. On the following page (play page), choose an option in order to play with the computer.
5. After you click your option (on the result page), you can see if you won, lost or it's a draw.
Also, you have the option to play again by clicking the button Let's Play Again!


Approach for the challenge:

- I've started by modelling the way I want to have my pages displayed, deciding that I will need the Game, Player and Computer classes.
- on Game class I will have the game being played using the other two classes (Player - created with a name and a selection between "Rock, Paper, Scissors" and Computer - created with a random selection between "Rock, Paper, Scissors")
- I've had as help the previous steps I've followed when doing the weekly challenge (Battle app) - https://github.com/makersacademy/course/tree/master/intro_to_the_web - and I've tried to do a similar approach when started building the Rock Paper Scissors Game.
- Very useful was the last step from the weekly challenge (Killing the Global Variable https://github.com/makersacademy/course/blob/master/intro_to_the_web/killing_the_global_variable.md ) because I didn't want to use a Global variable in my app. Getting help from the walkthrough, I managed to use a class instance variable to store the game instance and be able to access the stored information between the requests without using a Global variable.

I've created a method "start" on the class and then the instance (see below):

```
def self.start(player, computer)
@game = Game.new(player, computer)
end

def self.instance
  @game
end

```

- I've done a couple of feature tests, testing the displayed page and what items should be included on it; then checking that the methods used in my classes respond correctly.

- in the views files, I've used html and css to style the pages with a specific colour, displaying images for Rock, Paper and Scissors, and changing the Player and Computer display colour on screen.


Task
----

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
