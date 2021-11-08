# Rock Paper Scissors Challenge

## Introduction

Creating a simple web app game of Rock Paper Scissors.
This web app is written in `Ruby` and uses the `Sinatra` framework.
Follows `TDD` and has been tested with `Rspec` and `Capybara`

## How To Run

```
run 'bundle install' in the terminal
then run 'rackup' to initiate a local server
go to localhost:9292 on a web browser of choice
```

### Technologies Used

- Tested with `RSpec` + `Capybara`
- Used `simplecov` to assess test coverage
- Written in `Ruby`
- Used `Sinatra` framework

## My Approach

- Started with mapping out a simple diagram of the game and expectations to align with the user stories
- Create a basic structure for GET and POST requests
  - Create baisc views
  - Implement HTML
  - Test with 'rackup' to get a visual representation
- Steps
  - Create the required homepage form and test that the input received in the 'param' is fed back is a POST request when the form is submitted
  - Create inputs that allows the user to click and choose a move
  - Create the player class, initialize with a name
  - Create a computer class which initializes a array of moves and can randomly sample from this array
  - Create a game class which has Class methods to store state through different routes. This allows the web app to work without the use of global variables.
  - Initiate the game logic when the user chooses a move
  - Display the result with a winner and ability to play again
  - The game object should be able to store scores dependant on the result
  - Update the score counter when game is restarted

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

```
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
```
