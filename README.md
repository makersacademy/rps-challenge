# RPS Challenge
```
       __ \/_
      (' \`\
   _\, \ \\/ 
    /`\/\ \\
         \ \\    
          \ \\/\/_
          /\ \\'\
        __\ `\\\
         /|`  `\\
                \\
                 \\
                  \\    ,
                   `---'  
```

Description
===========
Rock Paper Scissors game, made to the following specification:
* Players can register their name before playing an online game
* Players can play a game of Rock Paper Scissors
* Players are presented with the choices Rock Paper Scissors
* Players can choose any option
* The computer opponent will choose a random option
* A winner will be declared

Extra Features
--------------
* Players can now also choose Lizard or Spock
* Players can choose to do a rematch after a game has ended

How to use
==========
1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle` to install all of the gems needed to run the game
4. Start up the game on a local server by entering command `ruby app.rb`
5. Go to your preferred web browser (I like Chrome) and navigate to localhost:4567
6. Try to beat the computer!

Notes
=====
Multiplayer
-----------
I would like to add a Multiplayer option in the future. This would allow two players to play against each other in the same browser. In order to do this a Game class would be initialized with two players, the first would always be an instance of the Player class, the second could be another Player class or would default to a Computer class if a second player name is not given by the user.

Encapsulation
-------------
A Computer class does currently exist and has the capacity to choose a weapon. I would like to complete my work on the Computer class. This will involve removing the responsibility of choosing a wespon for the computer from my Game class. Ultimately the Game class will not care who the two players are - player vs player, or player vs computer - as it will function the same either way.

Style
-----
I would also like to add some CSS files to make the whole thing prettier!

Examples
========
Homepage:

<kbd>![alt text](http://i.imgur.com/xqHFZiB.png)</kbd>

Choose Your Weapon:

<kbd>![alt text](http://i.imgur.com/eTl5BPB.png)</kbd>

Game win:

<kbd>![alt text](http://i.imgur.com/B4VnQeN.png)</kbd>

Game Loss:

<kbd>![alt text](http://i.imgur.com/XYrcuYs.png)</kbd>

Game Draw:

<kbd>![alt text](http://i.imgur.com/piRoDd7.png)</kbd>

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.

Travis CI status badge [![Build Status](https://travis-ci.org/kwilson541/rps-challenge.svg?branch=master)](https://travis-ci.org/kwilson541/rps-challenge)
