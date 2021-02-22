# Rock, Paper, Scissors Challenge

This was a solo challenge for Week 3 at Makers Academy. 

The task is to provide a _Rock, Paper, Scissors_ game to be played on the web with the following user stories:

```
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the player should be able to enter their name before the game
- the player will be presented the choices (rock, paper and scissors)
- the player can choose one option
- the game will choose a random option
- a winner will be declared

## Getting started

`git clone https://github.com/hannahdesmond/rps-challenge`
`bundle`

## Usage

`rackup` 

Navigate to `http://localhost:9292/`


## Running tests

`rspec`


## Steps taken and challenges
I created a sequence diagram to help with planning the code. 

![Image of sequence diagram](https://github.com/hannahdesmond/rps-challenge/blob/master/sequence_diagram_rock_paper_scissors.png)

I feature tested the home page and play features and created the corresponding routes in the controller and view. I then created a feature test for playing the game and stubbed the random behaviour in this feature test. I test-drove the creation of Computer and Game classes. 

| Input (p, c) | Output |
| ----------- | ----------- |
| scissors, scissors | draw |
| rock, rock | draw |
| paper, paper | draw |
| scissors, rock | you lose |
| rock, paper | you lose |
| paper, scissors | you lose |
| paper, rock | you win |
| rock, scissors | you win |
| scissors, paper | you win |

**To improve this code,** the method which declares a winner needs refactoring as it is too long. I also wanted to create clickable buttons for selecting a move, but could not find a way to do this with Ruby and Sinatra. If I had more time, I may have created radio buttons instead of a text form so that spelling errors would not cause any problems with the game. 
