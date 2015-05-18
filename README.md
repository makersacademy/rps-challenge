# RPS Challenge: Rōnin Badge Test

## Completion notes

### Domain modelling

The following are the main components of the actual program:

* Sinatra class and ERB files for the UI. GET / for the homepage, GET and POST /play for in-progress games, and GET /gameover for completed games.
* Session cookies for user identification.
* Game class to store individual games. Contains Player objects through dependency injection. Has .points_required method which returns the number of points required to win the game (passed in via initial argument), and game_over? method to return if a player has won the game.
* Player class to store individual players. Has .play method which returns :rock, :paper, :scissors, and .autoplay method to return one selected at random. Has .won_game? method to check if the player has lost the game. Has .points method to see score for current player.
* Tbc: some way of selecting and storing whether a player is a bot or a real person.
* Tbc: add support for Spock and Lizard.

### User stories

The user stories are turned into Cucumber features and scenarios.

User story under development:

> As a marketeer
> So that I can enjoy myself away from the daily grind
> I would like to be able to play rock/paper/scissors

Completed user stories:

> As a marketeer
> So that I can see my name in lights
> I would like to register my name before playing an online game

### Order of development

I'm test driving from the UI downwards. Here’s how the development order goes, running cucumber after each step and cycling back to the top each time I run out of test failures:

1. Set up the server and software stuff
2. UI feature tests in /features
3. Step definitions and paths file lurking in /features
4. Main Sinatra web app program in /lib
5. ERB templates in /views
6. RSpec unit tests in /spec
7. Backend code in /lib


## Original instructions


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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan (if you haven't already)
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
