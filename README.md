

Rock Paper Scissors Challenge
==================


![id](https://github.com/Corina/rps-challenge/blob/master/public/for_readme.jpg?raw=true)


A Rock, Paper, Scissors web app where 2 players can play against each other.

The first page ask for players name, if none are given the game uses the default names. The first player must be *human* and is forced to make a choice between the 3 options but the second player can skip choosing and the computer will chose instead.

There are 2 modes of playing:
- sudden death: the game stops after one round
- best 3 out of five: score is kept for 5 games and results are anounced after each round as well as the overall winer  


************************************************************
###### Example of how the program is run:

![ScreenShot](https://raw.githubusercontent.com/Corina/takeaway-challenge/master/docs/Screenshot.png)

#### How to install it
- Fork this repo
- Run the command 'bundle' in the project directory to ensure you have all the gems

#### Missing functionality
- Restaurant class: confirm_order method is not completed, it's set to return true
- Other functionalities to be added: Bank class to deal with money transfer from client to restaurant

#### How to test it
- Use rspec and rubocop
