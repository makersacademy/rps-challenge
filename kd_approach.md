## Project Overview
## Processes & Approach

#### REQUIREMENTS

This project is part of Week 3 of the Makers Academy 12-week software engineering programme. 

The aim of this project is to build a web app game for the Makers Academy Marketing Array ( **MAMA** ). The game will be a _Rock, Paper, Scissors_ game, which can be played on the web with the following user stories:


#### USER STORIES

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

##### CLASSES/OBJECTS

I have decided to use `models` to manage the logic of the game. This will make the app easier to change in the future.

- `Player` class:
  This will handle the player.
  Version 1 will have a human and CPU player
  The player class is useful so that players can be created for the enhanced multiplayer game

  `Player` has a:
  - Name
  - Move

  - CPU, Player 1, Player 2 etc. are all be `player`s

- `CPU` class:
  This will handle the underlying CPU logic.
  
  `CPU` has a:
  - List of choices
  - Move

- `Game` class:
  This is the game engine and will handle playing the game.

  Has a:
  - `set_move` method to set the player move
  - `play` method to play the game
  - `game_over` method gives the outcome of the game

##### VIEWS

- Landing Page
- Enhancement: How to Play?
- Let's Play Rock, Paper, Scissors / Winner message!


With my notes, I will go through the TDD process.

- USER STORY
- FEATURE TEST
- UNIT TEST
- CODE IMPLEMENTATION
- FEATURE TEST


#### TECHNICAL IMPLEMENTATION

I used a test-driven development approach to create the simple web app with a form using the `sinatra` MVC framework.

For each user story, I sketched out the features and then wrote some feature tests to capture the end-to-end user flow. I used Capybara for feature testing the user flow, with extensions for RSpec.

For technical implementation, I decided to use models `game.rb`, `cpu.rb` and `player.rb` to analyse manage the logic.


### USER STORY 1
> As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

Feature 1:
- The marketeer should be able to enter their name before the game:

The user will first go to the landing page, they will see the following features:

- Text input box for the user to enter their name:

```
What is your name?
Type: Text input box

```

## Test Cases

1. [X] Feature test that the infrastructure works / project structure works
2. [X] Test that user views landing page with input form
3. [X] Test that user enters name to redirect to play view
4. [X] Further test that user name can be accessed via session to display in `play.erb`

## Player Class - Test Cases

Refactor to use player class to handle the player.

1. [X] Player class returns a name of the player
2. [X] Confirm feature tests still work


### USER STORY 2
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

Feature 2:

The user will be shown a another screen, they will see the following features:

```
[X] Let's Play [NAME]!

```

Enhancements:
- Instructions on how to play etc.
- Engaging user interface

Feature 3:
- The marketeer will be presented the choices (rock, paper and scissors)

```
[X] Links to 'Rock', 'Paper', 'Scissors'

```

Enhancements:
- Engaging user interface / buttons for Rock / Paper / Scissors (or icons even)

Feature 4:
The marketeer can choose one option

```
[X] User clicks button / link

```

## Test Cases

1. [X] Feature test that user sees RPS Display and Rock, Paper, Scissors selections
2. [X] Test that user user can select link e.g. rock

## Player Class - Test Cases

1. [X] Player `set_move` sets the player move

## Game Class - Test Cases

1. [X] Game `game_over` decides the outcome of the game

Feature 5:
The game will choose a random option

- CPU chooses an option from Rock, Paper, Scissors

## Game Class - Test Cases

1. [X] decides the outcome of the game - player 1 wins
2. [X] decides the outcome of the game - player 2 wins
3. [X] decides the outcome of the game - draw


Feature 6:
Winner will be declared

- User interface displays message:

```

'Pusheen chooses 'Rock'
'Computer chooses 'Scissors'
'The winner is Pusheen'

```
## Test Cases

1. [X] Feature test when it is game over, the user sees the move they played
2. [X] Feature test when the game is over, the user sees the outcome of the game - the winner is declared 

*Enhancement:*
-
-
-


## Improvements/enhancements:

Here are the improvements/enhancements I identified for my project:

- Maintain 100% test coverage for RSpec
- Apply enhancements to front-end views for a more engaging user interface
- Try out ## Bonus level 1: Multiplayer now that I have the Player class and Game class as starting points
- Apply stubbing to stub out random behaviour more confidently
- Refactor some code in Game class to make the selection of winning moves cleaner
- Try out `self.instance` for classes
