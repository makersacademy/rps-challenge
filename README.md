# Rock, Paper, Scissors, Lizard, Spock app

If you want to give the app a try, please feel free, it's live at:
https://rpsls-demo.herokuapp.com

## Features

This app was created to simulate games of rock, paper, scissors, lizard, Spock.  Users can play against the computer in single player games or they can play local 2 player games.

The following features were implemented to make the experience as good as possible:
- 1 and 2 player
- Computer player can make randomised moves in single player games
- User name displays
- Move selections are displayed in their corresponding colour

## Technology used
- Sinatra
- Ruby
- HTML
- CSS
- Rspec (for testing)


## Welcome!!

![Welcome Page](https://github.com/Ajay233/rps-challenge/blob/master/public/Welcome.png?raw=true)

The look of the page was inspired by the Big Bang Theory (where Rock, Paper, Scissors, Lizard, Spock was born).  I've tried to keep the look of the app inline with this by using sci-fi and comic elements in the styling.  

The welcome page above gives the user the rules so they know how to play and provides the options to either play a single player game or have a 2 player game.

## Play a single player game against the computer

If the user clicks on the "1 Player" button, they will be taken to the screen below where they will need to enter their secret identity (although entering a name will do as well).  

![Single player name entry](https://github.com/Ajay233/rps-challenge/blob/master/public/1playerEnterName.png?raw=true)


When the user clicks submit, they are taken to the screen below where their name is displayed, showing that they are going up against the CPU.  Here the user can make their move by clicking on one of the radio buttons and then clicking the "Submit" button.  

![Single player turn](https://github.com/Ajay233/rps-challenge/blob/master/public/1playerTurn.png?raw=true)


The user will then be taken to the screen below where the results are displayed.  The user's move is displayed along with the computer's move (which is made using a method that picks a random move).  Below this the user is notified whether they won, lot or drew.  They then have the option to play again.  Clicking on the "Play again??" button will take the user to the welcome page where they can choose to playe a single player game or start a 2 player game.

![Single player game over](https://github.com/Ajay233/rps-challenge/blob/master/public/1playerGameOver.png?raw=true)


## Play a 2 player game

If the user clicks on "2 player", they will be taken to the screen below where both players can enter their names.  

![2 player name entry](https://github.com/Ajay233/rps-challenge/blob/master/public/2playerEnterNames.png?raw=true)


After clicking the "Submit" button, they will be taken to the screen below where both players' names are displayed and player 1 is invited to make their move.  (As this is a local game, player 2o will need to aver their gaze while player 1 makes their move )

![player 1's turn](https://github.com/Ajay233/rps-challenge/blob/master/public/2playerTurnOne.png?raw=true)


After clicking "submit", player 2 will then be asked to make their move.

![player 2's turn](https://github.com/Ajay233/rps-challenge/blob/master/public/2playerTurnTwo.png?raw=true)


After both players have made their moves, they will be taken to the screen below where they will be given the results and can then choose if they want to play again.

![2 player game over](https://github.com/Ajay233/rps-challenge/blob/master/public/2PlayerGameOver.png?raw=true)
