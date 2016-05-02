![alt tag](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)

Rock, Paper, Scissors, Lizard, Spock, Spiderman, Batman, Wizard, Glock (or RPSLSSBWG)

RPSLSSBWG is an expansion on the traditional Rock Paper Scissors game that uses modular arithmetic to determine
the winner. This is a single-player game in which the player battles the computer, which is randomly assigned a
name of one of my pals. :) The game takes place in outer space, in the distant future.

Instructions
-------
After downloading these files, run Bundler to make sure you have all the necessary gems to run the game.
Get the game up and running using the command `ruby app.rb` in your terminal, and visit localhost:4567 in your
browser.

Playing the Game
-------
![alt tag](http://i.imgur.com/n9zWNS6.png)
Enter your name here to get started. You will be prompted to select your weapon of choice at the next screen.
Once you view the outcome of the game, you have the option of viewing the rules as well. The rules are also
below.

![alt tag](http://i.imgur.com/EqlN342.jpg?1)

Determining the Winner
-------
The winner is determined using a very simple formula that assigns a value to each player's selection. It then
subtracts the values and takes % 9 of the result. If the resulting number is 0, the players are tied. If the
resulting number is even, then the first player (always the computer) wins. Otherwise, the player wins.
