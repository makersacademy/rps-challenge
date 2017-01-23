# RPS Challenge

[![Coverage Status](https://coveralls.io/repos/github/rkclark/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/rkclark/rps-challenge?branch=master) [![Build Status](https://travis-ci.org/rkclark/rps-challenge.svg?branch=master)](https://travis-ci.org/rkclark/rps-challenge)

Task
----


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

## Approach

I chose to pursue the bonus objectives from the start, these were:

- Allow the choice of playing one player vs the computer or two player
- Extend the game to use the 'special rules': Rock, Paper, Scissors, Spock, Lizard

I designed the following domain model to guide me in my implementation:

![DM](https://app.ardoq.com/presentation/makersacademyjan2017/587e15df72fa6d218cea11a3)

I then employed the following tools to construct the application:

**Framework**
- Sinatra

**Testing**
- RSpec
- Capybara

**Front-end**
- Bootstrap 4
- Sass

## Installation

- Clone the repo
- Run `bundle install`
- Run `ruby app.rb`
- Open `localhost:4567` in browser

## Usage

The home page allows you to enter two player names. These default to Human players but Player 2 can be assigned to Computer if you would like to play single player.

![Enter names](https://github.com/rkclark/rps-challenge/blob/master/screenshots/enter_names.png)

Once in the game, Player 1 is prompted to choose their move. Click the desired move and and click 'Choose Move'. If playing against the computer, you will see the result of the battle. If not, Player 2 will be prompted to choose their move.

![Player 1 Move](https://github.com/rkclark/rps-challenge/blob/master/screenshots/player_1_move.png)

![Player 2 Move](https://github.com/rkclark/rps-challenge/blob/master/screenshots/player_2_move.png)

On the results screen you are able to continue to the next round, or start a new game with fresh players. A battle log at the bottom of the screen records the results of the rounds, as well as the players each being able to see their individual score.

![Results](https://github.com/rkclark/rps-challenge/blob/master/screenshots/result.png)
