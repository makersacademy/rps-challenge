# Rock Paper Scissors

## Introduction

Creating a game of Rock Paper Scissors as a Web App.

## How To Run

### Tech used

- Tested with `RSpec` + `Capybara`
- Used `simplecov` to assess test coverage
- Written in `Ruby`
- Used `Sinatra` framework

## My Approach

- Understand the user stories fully
- Map each requirement into a Domain model
  - Map the `nouns` and `verbs` into attributes / methods
  - Map User Journey (HTTP Requests) from Client/Server
  - Create planned files within the terminal ... `touch n.rb`
- Steps
  - Feature test the instructions to the form, and also the form, then code the form
  - Add the form and allow for a form submit, with expectation of "name vs computer"
  - Create the player class, initialize with a name
  - Create a computer class and inherit from the player class
  - Create a game class which has Class methods to store the games state throughout the app.
  - Display options to the user on screen to click one of 3 buttons
  - Integrate all of the classes together to display on the screen with a winner

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

`noun` = name, game
`verb` = register, play

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

`noun` = rock/paper/scissors
`verb` = play

```
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
```

`noun` = choices,
`verb` = presented, chose (option), declare (winner)

---

## Domain Model

`player`
| Attr | Methods |
| -------- | ------- |
| name | make_selection() |
| selection | |

`computer < player`
| Attr | Methods |
| -------- | ------- |
| name | random_selection() |
| selection | |

`game`
| Attr | Methods |
| --------| ------- |
| player | declare_winner() |
| | show_options()|
| @game (class instance var)| self.game_instance() |

## Layout

- lib
  - game.rb
  - player.rb
  - computer.rb
- app
  - app.rb
  - views
    - index.erb
    - play.erb
    - results.erb
- spec
  - feature
    - index_spec.rb
    - play_spec.rb
    - results_spec.rb
    - helper.rb
  - game_spec.rb
  - player_spec.rb
  - computer_spec.rb

---

## HTTP requests

#### get /

- Request:: Client HTTP GET request to visit the route Route
- Response:: Server responds with 200
  - erb: :register
    - 1x title description to enter name
    - Form with 1x input text, 1x input submit

#### post /register

- Request:: Client HTTP POST request, submitting their name
- Response:: Server responds with 200
  - create Game.instance(Player.new(:name))
  - redirect /play

#### get /play

- Request:: Client HTTP GET request, requesting to begin playing the game
- Response:: Server responds with 200
  - create instance var @game, the @game from out Game class
  - erb: :play
    - shows player name vs computer
    - 1x title description to chose an option
    - 3x submit buttons with values as rock/paper/scissors

#### get /result

- Request:: Client HTTP GET request, user clicks rock/paper/scissors
- Response:: Server responds with 200
  - Run computer random guess
  - display winner
