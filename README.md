<h1 align="center"> Rock • Paper • Scissors </h1>

<p align="center">
  <a href="#user-content-installation">Installation</a> •
  <a href="#user-content-approach">Approach</a> •
  <a href="#user-content-specifications">Specifications</a> •
  <a href="#user-content-technologies">Technologies</a> 
</p>

The basic rules of the game are:
- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock


## Installation

1. Clone this repository

2. Move into the folder
```
$ cd rps-challenge
```

3. Install dependencies:
```
$ bundle
```

4. Run the app
```
$ rackup
```

### Run the tests

```
$ rspec
```

## Approach


### Next steps

With more time, I would upgrade the look of the game and also upgrade to Rock, Paper, Scissors, Spock, Lizard.

I would also deploy the app on Heroku.

## Specifications

Features:
- A player can enter their own name before starting a game.
- A player will be presented with a choice (rock, paper and scissors).
- A player can choose one option.
- The computer will choose a random option.
- A winner will be declared.

Bonus specification:
- Two people can play against each other.


### User Stories

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Technologies

- Ruby
- Sinatra
- Testing: RSpec
- Linter: Rubocop