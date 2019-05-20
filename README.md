# RPS Challenge

## INTRODUCTION

The aim of this project is to build a rock, paper, scissors which can be played on the web as a single player against the computer.

The project is provided by Makers Academy. It is the third weekend challenge and is the culmination of a week spent on the fundamentals of web app development.

## MOTIVATION

The purpose of this project is to work on my weekly focus goals:

### I can TDD anything

* Apply the TDD approach to a simple web app using Ruby/Sinatra and the RSpec testing framework with Capybara.

### I can debug anything

* Follow an effective debugging process for web applications.

### I can help my teams succeed

* I can write code that is easy to change.

### Specific goals

* Understand the basics of how the web works (e.g. request/response, HTTP, HTML, CSS).

* Understand the MVC pattern.

* Build understanding of Capybara.

## TECH/FRAMEWORK USED

This project follows the RSpec testing framework using capybara. Find out more about Capybara [here](http://teamcapybara.github.io/capybara/).

`"RSpec is a Behaviour-Driven Development tool for Ruby programmers. BDD is an approach to software development that combines Test-Driven Development, Domain Driven Design, and Acceptance Test-Driven Planning. RSpec helps you do the TDD part of that equation, focusing on the documentation and design aspects of TDD."` [Link](https://relishapp.com/rspec)

`Sinatra` the ruby web framework will be used to develop this app. It will follow the MVC development pattern. Ruby will be used as the programming language and HTML in Sinatra views for the user interface.

While developing the app I used the Ruby web server interface, Rack. More info can be found at [Rack](https://rack.github.io/).

## CODE STYLE

[Rubocop](https://github.com/rubocop-hq/rubocop) has been used as a guide.

## GETTING STARTED

## HOW TO USE THE APP

## IMAGES/SCREENSHOTS

## RUNNING TESTS

# APPROACH

Below is the approach I took to build the web app. As this is a simple web app I have skipped a number of steps that I deemed to be unnecessary - hence a number of headings without any content!

## REQUIREMENTS

The aim of this project is to build a web app game for the Makers Academy Marketing Array ( MAMA ). The game will be a Rock, Paper, Scissors game, which can be played on the web with the following user stories:

## USER STORIES

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

PROGRAM USAGE

* The app will be available to use over the web.

### STEP 1 - SKETCHING OUT THE DOMAIN MODEL

Translating the user stories into a domain model

### STEP 2 - SET OUT THE OBJECTS / CHARACTERISTICS / INTERACTIONS

From the user stories, set out the objects and their interactions (messages) to be modelled

### STEP 3 - DEFINE METHODS AND WHAT THEY DO

Now that the domain model, objects and their interactions are clear, set out the methods

### STEP 4 - DEFINE TEST CLASS

Now I set out the test cases

### STEP 5 - TDD PROCESS

Using the notes gathered in the above five steps, go through the TDD process

* USER STORY
* FEATURE TEST
* UNIT TEST
* CODE IMPLEMENTATION
* FEATURE TEST

## CLASSES/OBJECTS

As far as is reasonable, all the programming behind the classes/objects will be held in the `model` directory.

* `Player` - this will manage the player. Version 1 will be single player, however, it will be adapted into a multiplayer for the enhanced version. `player_1`, `player_2`, and the `computer` will all be an iteration of the player class. It will have:

  * name
  * move

* `computer` - this will handle the logic of the opponent in the single player game. It will have:

  * list of moves
  * move

* `Game` - This will handle the logic behind playing the game. It will have:

  * `choose_move` method to determine the players move.
  * `play` method to initiate the game.
  * `game_over` method to end the game.

## VIEWS

There will be a:

* Landing page

## TECHNICAL IMPLEMENTATION

I used a test driven development approach to develop a Sinatra MVC based web app.

While developing the app I have been using the Ruby web server interface, Rack. More info can be found at [Rack](https://rack.github.io/).

For each user story, I sketched out the features and then wrote the feature tests (in Capybara) to capture the end-to-end user flow.

## USER STORIES

### USER STORY 1

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

**OBJECTS**

* none

**MESSAGES**

* The user will directed to a landing page.
* The user will be shown an onscreen message with a greeting and asking for their name. Text to be displayed:
```
ROCK, PAPER, SCISSORS

Enter your name to play: [Text input box]
```
* When the user clicks the `submit` button he will be redirected to a welcome page displaying the following:
```
Welcome [name]!

Are you ready to play?
```

**TEST CASES**

Feature:

-[X] the player can submit their name and be redirected to a welcome page.

## USER STORY 2

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

**OBJECTS**

* player
* computer
* game

**MESSAGES**

* Player clicks `play` button on `play.erb` view and is presented with a new view with the options `Rock`, `Paper` and `scissors`.
* The player choose one option by clicking on the relevant button and redirected to another page with the outcome.

**TEST CASES**

Feature:

-[ ] The user is presented with the `Rock`, `Paper`, `Scissors` options once he has clicked on the button play.
-[ ] If the player wins he is redirected to a page with `The winner is [player]`
-[ ] If the computer wins he is redirected to a page with `The winner is the computer`

`player` unit tests:

-[X] Player to initialize with a name.
-[X] Accepts #move and returns the correct move.

`game` unit tests:

-[X] Instantiates and creates player_1.
-[X] Instantiates and creates player_2.

`computer` unit tests:




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
