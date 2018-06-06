# RPS Challenge

### Quickstart:
#### How to install the code:
1. Fork this project.
2. Run ```bundle``` to ensure you have all the relevant gems.
3. Use Ruby 2.5.0

#### How to use the website:
1. Load localhost server via ```rackup config.ru``` and note the port number listed.
2. Visit 'localhost:XXXX' with the port number.

#### How to run the tests:
Spec file includes unit tests and feature tests sub folder. All tests can be run via ```rspec```.


### Approach to solving the challenge:

1. Set up Sinatra file system and frame work with Controller and Views.
2. Created Capybara feature tests for ensuring the user behaviour was as expected.
3. Worked through the Red, Green, Refactor process to address each user story.
4. As game requirements progressed moved functionality out to the Model layer, starting with a Player class and developing to a Computer Class and eventually a Game class for the gameplay logic and winner calculation.
5. Worked to keep the Controllers short by adding a Sinatra filter and refactoring wherever possible.
6. Removed all global variables by swapping out for a Class variable on the Game.
7. Added basic images and gifs to give a little personality. (Further styling would have been best served with a CSS sheet.)

### Status at point of push:
Single player vs Mr Rosso (the computer with a randomly generated choice of rock, paper or scissors) is complete.
Rubocop checked and no offenses.
Rspec running at 100% test coverage.

### Description of what code does:
Web based game that enables the user to register their name and play Rock Paper Scissors against the legendary guidance counselor of Freaks and Geeks. Views enable you to click an image for your rock, paper or scissors choice and click through to see if it's a win, loss or draw.  

### Code Style:
Standard Ruby, with Capybara and Rspec syntax for testing.

### Features:
Built with future extension in mind. A two player version can be swiftly updated using the Player Class of the Model to replace the Computer opponent.
A play again button can be added to loop back to the home page for ease of repeat play.

### Code Example:
Extract from the Game class:
```
  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def self.launch(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def win?
    winning_move
  end
```

Instructions Set by Makers Academy
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
