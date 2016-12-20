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
This is the Week 3 weekend challenge from Makers Academy. The challenge was to design a rock, paper, scissors game to the following specification:

* A player can register their name before playing an online game
* A player can play a game of Rock Paper Scissors
* A player is presented with the choices Rock Paper Scissors
* A player can choose any option
* The computer opponent will choose a random option
* A winner will be declared

Project consists of a Game, Player and Computer class, and a Weapons module.

Extra Features
--------------
* Players can now also choose Lizard or Spock
* Players can choose to do a rematch after a game has ended
* CSS added to make the whole thing a little less hideous!

Technologies
============
* Code is written in Ruby
* Testing done using RSpec
* Sinatra Framework (DSL) used to create web application using Ruby
* Coveralls used to assess test coverage
* Travis CI used to check build status (badge displayed below)

How to Install
==============
1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle` to install all of the gems needed to run the game

How to Use
==========
1. Start up the game on a local server by entering command `ruby app.rb`
```
[16:06:30] KimWilson:rps-challenge git:(master) $ ruby app.rb
[2016-12-20 16:06:34] INFO  WEBrick 1.3.1
[2016-12-20 16:06:34] INFO  ruby 2.2.3 (2015-08-18) [x86_64-darwin14]
== Sinatra (v1.4.7) has taken the stage on 4567 for development with backup from WEBrick
[2016-12-20 16:06:34] INFO  WEBrick::HTTPServer#start: pid=99059 port=4567
```
2. Go to your preferred web browser (I like Chrome) and navigate to localhost:4567
3. Try to beat the computer!

Optional: If you wish to run the tests for this project, enter `rspec` into your command line. If you wish to view the test coverage, enter `coveralls report` into your command line.

Notes
=====
Multiplayer
-----------
I would like to add a Multiplayer option in the future. This would allow two players to play against each other in the same browser. In order to do this a Game class would be initialized with two players, the first would always be an instance of the Player class, the second could be another Player class or would default to a Computer class if a second player name is not given by the user.

Encapsulation
-------------
A Computer class does currently exist and has the capacity to choose a weapon. I would like to complete my work on the Computer class. This will involve removing the responsibility of choosing a wespon for the computer from my Game class. Ultimately the Game class will not care who the two players are - player vs player, or player vs computer - as it will function the same either way.

Examples
========
Homepage:
<kbd>![alt text](http://i.imgur.com/TRq6SDi.png)</kbd>

Choose Your Weapon:
<kbd>![alt text](http://i.imgur.com/zbWjoGP.png)</kbd>

Game win:
<kbd>![alt text](http://i.imgur.com/YdZjJ6q.png)</kbd>

Game Loss:
<kbd>![alt text](http://i.imgur.com/yG7Yyb7.png)</kbd>

Game Draw:
<kbd>![alt text](http://i.imgur.com/7LYgmKU.png)</kbd>

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.

Travis CI status badge [![Build Status](https://travis-ci.org/kwilson541/rps-challenge.svg?branch=master)](https://travis-ci.org/kwilson541/rps-challenge)
