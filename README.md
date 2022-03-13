# RPS Challenge

[![Build Status](https://app.travis-ci.com/PKilgarriff/rps-challenge.svg?branch=main)](https://app.travis-ci.com/PKilgarriff/rps-challenge)

The Rock-Paper-Scissors (RPS) challenge is a web-app that allows a user to play a game of [Rock, Paper, Scissors](https://en.wikipedia.org/wiki/Rock_paper_scissors), either against a computer-controlled character, or an actual person in the room with them.

## Getting started

```shell
$ git clone https://github.com/PKilgarriff/rps-challenge
$ bundle
```

## Usage

This is a webapp, with instructions given on the site itself.

```
rackup
```
Navigate to `http://localhost:9292/`

## Running tests

Tests can be run with rspec, when run with the documentation formatting flag this will also provide insight into the functions of the classes.

```
rspec --format documentation
```

### Current Testing Output

```http
Choice Entry Pages
  player 1 has a page where they can make a choice
  a multiplayer game has a page for player 2 to make choices as well

Welcome Page
  entering a player name displays it on a welcome page
  playing as a single player causes a computer controlled player to be generated

Game
  initializes with an empty player array
  #number_of_players
    returns a count of the players in the array
  #add_player
    adds a player to the players array
  #reset
    clears the players array
  #outcome
    returns the correct winner
  .instance
    creates a new game
    returns itself

Player
  initializes with a name
  #computer?
    when player controlled
      returns false
    when computer controlled
      returns true
  #choice=
    when choice is valid
      stores it in lowercase
    when choice is invalid
      raises an error
  #set_random_choice
    updates choice with a random valid option
  #clear_choice
    sets choice to nil

Finished in 0.17571 seconds (files took 0.54871 seconds to load)
18 examples, 0 failures
```

## User Stories

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

## My Approach

- Begin by diagramming the process that a user might go through.
  - [Diagram](./RockPaperScissors.drawio.html)
- Use the process diagram to inform the creation of basic views
- Test user experience in browser.
- create unit spec file for Player class
  - Test Drive development of Player class
    - attr_reader for name
    - @computer_controlled variable
    - computer? method to check if Player is 'live'
- create unit spec file for Game class
  - Test Drive development of Game class
    - attr_reader for @players
    - add_player method
    - number_of_players
    - add class method .instance
    - add reset method to clear player array
- Added config.ru for Rackup
- views added for UI
  - number of players selection screen
  - name submission form
    - conditionally loads based on number of players
  - Welcome page with user names displayed
- Referred back to User Stories as first (name in lights) now complete - ~Needs feature test~
- refocused on implementing single-player
- Changed direction - beginning to drive game logic in library files
  - then will integrate with front-end once basic function in place
- Update Player class
  - set_choice method
  - clear_choice method
  - choice attr_reader
- Add feature test to check that User Story 1 has been properly implemented
- Extract creation of a computer controlled player from the controller into the Game class
  - add add_computer_opponents method to Game
  - add outcome method to Game
- Properly mocked out the dependency injection in the Game spec
  - previously had been creating its own instances of Player
  - now passes a player_class double that can respond to calls for new with specific Player doubles
- Update Player class
  - add set_random_choice method (used by computer-controlled players)
  - add choice_made? method (allows game to be completed)
- Get very frustrated with session hash appearing not to persist any data
  - finally read that you need to enable sessions in the controller for this to work
- Both User Stories have now been implemented
- Bonus step with multiplayer has now also been implemented
  - Computer player has always been an instance of the Player class, so this was relatively simple to bring in.

## Technologies Used

- Ruby
- Sinatra
- RSpec
- Capybara
- SimpleCov (100%)
  - _Suspiciously high test coverage, so will need to check why and get the actual test coverage_
- Travis CI (Currently Failing to build)

## Next Steps

1. Bring in images
  - certainly for the final page
  - for use as buttons on the player choices
2. Stretch challenge Rock-Paper-Scissors-Lizard-Spock
  - Back to diagramming to understand win conditions
3. Actual Multiplayer?
  - more than two players

## Further Questions

- What's best practice with having multiple instance variables for a controller?
  - Is it better to have @game and then access the players directly from that object in the view
  - Is it better to declare @player1 and @player2 in each route?
- Why is SimpleCov reporting 100% test coverage?
  - seems to be testing the spec files instead of the library files
- How to get Sinatra Reloader to play nicely with Travis CI?