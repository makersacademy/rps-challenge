# Rock Paper Scissors

Play Rock, Paper, Scissors in your browser!

## How to Use

After cloning the repo, follow the steps below.

### Install dependencies

```sh
bundle
```

### Run the app

```sh
bundle exec rackup
```

Then visit http://localhost:9292/ in the browser to play.

### Run tests

```sh
bundle exec rspec
```

## Task

Build a _Rock, Paper, Scissors_ game to play in the browser.

Makers Acacemy week 3 weekend challenge.

See full challenge instructions [here](https://github.com/makersacademy/rps-challenge)

### User stories

```
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play Rock, Paper, Scissors
```

### Specifications

- the user should be able to enter their name before the game
- the user will be presented the choices (rock, paper and scissors)
- the user can choose one option
- the game will choose a random option
- a winner will be declared

### Basic rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Technologies Used

- Sinatra web framework
- RSpec testing framework
- Capybara testing framework

## Future Steps to Implement

### Bonus level 1: Multiplayer

Change the game so that two players can play against each other.

### Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock )
