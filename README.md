# RPS Challenge
A small once person web app game; rock, paper, scissors.

    As a marketeer
    So that I can see my name in lights
    I would like to register my name before playing an online game

    As a marketeer
    So that I can enjoy myself away from the daily grind
    I would like to be able to play rock/paper/scissors

## Motivation
This project was a test of TDD, OOD, MVC, in a small unguided web application build.

## Build status
[![Build Status](https://travis-ci.com/chriswhitehouse/rps-challenge.svg?branch=master)](https://travis-ci.com/chriswhitehouse/rps-challenge)

Basic functionality built.

Possible Extensions:

* CSS Styling
* Multiplayer functionality
* Rock, Paper, Scissors, Lizard, Spock

## Screenshots

### Domain Model
|Class | Game |
|------|------|
|Properties|players_list, rps_list|
|Actions|player_1, player_2, random_choice, declare_winner|

|Class|Player|
|-----|------|
|Properties|name, choice|
|Actions|add_choice|

### Sequence Diagram
![Sequence Diagram](https://github.com/chriswhitehouse/rps-challenge/blob/main/sequence_diagram.svg)

### Screenshots
![Register Name](https://github.com/chriswhitehouse/rps-challenge/blob/main/screenshots/Screenshot%202020-12-13%20at%2022.02.50.png)
![Pick Weapon](https://github.com/chriswhitehouse/rps-challenge/blob/main/screenshots/Screenshot%202020-12-13%20at%2022.03.11.png)
![Play!](https://github.com/chriswhitehouse/rps-challenge/blob/main/screenshots/Screenshot%202020-12-13%20at%2022.03.47.png)

## Tech/framework used
Ruby, with Sinatra web framework. Rspec, and Capybara for testing.

## Features
Single player:

* Add name
* Play game

## Code Example
Controller:
```Ruby
class RPS < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # $game = Game.new
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new("Computer")
    @game = Game.create(player_1, player_2)
    redirect '/choose'
  end

  get '/choose' do
    @game = Game.instance
    @game.player_2.add_choice(@game.random_choice)
    erb :choose
  end

  get '/play' do
    @game = Game.instance
    @game.player_1.add_choice(params[:rps])
    erb :play
  end

  # establish server if file run directly
  run! if app_file == $0
end
```

## Installation
Fork repository. Run bundle to install gems.

## Tests
100% Coverage. All tests passing.

### Feature Tests:

1. I would like to register my name before playing an online game
2. I would like to be able to  play rock/paper/scissors

### Unit Tests:

**Game**
* self.create
  * *should accept two player arguments*
  * *should create a new instance of a game*
* self.instance
  * *should return instance of a game*
* .new
  * *should accept two player arguments*
  * *should record both players in a players array*
* .player_1
  * *should return the player_1 object*
* .player_2
  * *should return the player_2 object*
* .random_choice
  * *should return a random choice*
* .declare_winner
  * Player 1: Rock vs Player 2: Scissors
    * *should return Player 1 Wins*
  * Player 1: Rock vs Computer: Paper
    * *should return Computer Wins*
  * Player 1: Rock vs Computer: Rock
    * *should return Draw*

**Player**
* .new(name)
  * *should accept a name parameter*
* .name
  * *should return the player name*
* .add_choice
  * *should record the players choice*
* .choice
  * *should return the player choice*

## How to use?
Run rackup. Then type 'localhost:' with assigned port number into web browser.
