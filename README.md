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
- Build initial test inc form
-

---

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
| | |

`computer < player`
| Attr | Methods |
| -------- | ------- |
| name | random_selection() |
| selection | |
| | |

`game`
| Attr | Methods |
| --------| ------- |
| player | declare_winner() |
| | show_options()|
| @game (class instance var)| game_instance() |

## Layout

- lib
  - game.rb
  - player.rb
  - computer.rb
- app
  - app.rb
  - views
    - register.erb
    - play.erb
    - results.erb
- spec
  - feature
    - register_spec.rb
    - play_spec.rb
    - results_spec.rb
  - game_spec.rb
  - player_spec.rb
  - computer_spec.rb

---

## HTTP requests

#### /

- Request:: Client HTTP GET request to visit the route Route
- Response:: Status 200
  - erb: :register

#### /register

- Request:: Client HTTP POST request, submitting their name
- Response:: Status 200
  - create Game.instance(Player.new(:name))
  - redirect /play

#### /play
