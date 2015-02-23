# Challenge: Rōnin Badge Test

 _Rock, Paper, Scissors_ game that can be played on the web with the following features:

- the marketeer has to enter his name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

##Comment
The game against the computer works fine. Playable at https://rps-challenge.herokuapp.com/ After three rounds the game is over. I implemented a score count. And if player and computer chose the same weapon, the player is asked to choose again. 
I like the way I found to let the game decide who has won a round.  

TODO:
- Layout
- I haven't found a way around packing most of the game into the same POST route and using if-Statements to control the output.
- If I want to play again without restarting the server I get an error I haven't understood so far.
- My cucumber tests are not complete


## Bonus 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )