# RPS Challenge

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## User Stories ##

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

Functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Domain Model ##


/homepage(get) 
                   | Player enters name /
                   | 

/output(post)      | Starts session 
                   | Redirects to play 

/play(get)         | Prints out user_name on screen
                   | Player inputs rock / paper / scissors 

/move_output(post) | Stores input
                   | redirects to outcome

/outcome(get)      | 
                   | Play again button 

/again(post)       | Stores if they won or not? 
                   | Redirects to /play





















## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )


