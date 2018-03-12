# Rock Paper Scissors (RPS) Challenge

A basic web application created using sinatra and Bootstrap, allowing users to play classic game of RPS with computer
Makers Academy Week 3 (Weekend challenge)

## Contents

| /lib /views (main files) | /spec (tests) |
|---|---|
| game.rb | game_spec.rb  |
| player.rb  | player_spec.rb  |
| index.erb  | index_spec.rb  |
| play.erb | play_spec.rb |  
| result.erb  | result_spec.rb |
| | testing_infrastructue_spec.rb |
| | web_helpers.rb |

## Getting Started

**1)** Clone or download and unzip repository.  

**2)** Run bundle install to install dependencies listed in Gemfile.

Features
----

- All the styling is done using Bootstrap which allows responsive web pages.

- Player can enter their name before playing.
![screenshot](/screenshots/login_desktop.png)
![screenshot](/screenshots/login_mobile.png)

- Player can select an option
![screenshot](/screenshots/play_desktop.png)
![screenshot](/screenshots/play_mobile.png)

- Player can see the result and chose to play again or start-over to give another name
![screenshot](/screenshots/result_desktop.png)
![screenshot](/screenshots/result_mobile.png)


Functionality and user story implemented

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
```

## TODO

- Add multiplayer support.
- Add support for Rock, Paper, Scissors, Spock, Lizard
