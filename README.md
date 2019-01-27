# RPS Challenge

Task
----

The aim of this challenge was to build a web app, written in Ruby and Sinatra and using capybara testing framework to play a simple rock paper scissors game. 

The user stories given were as follows:
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

Instructions for use
--------------------

To view use this application you can either:
1. View online at [heroku](https://rpschallengesstevenson.herokuapp.com/)
2. - Fork this repo
   - Run 'bundle install' on ruby version 2.5.0
   - run 'rackup config.ru'
   - open up in your browsers at 'localhost:9292'

Approach
--------

When using this application, there can be either two users who enter their names into the welcome page, or just one when only one person enters their name for player 1.  When there are two players, the first player will select their move, they will then be directed to a second users page for their choice. The winner will then be determined on the results page.
If there is only one player, they will play against the computer when they hit 'Go!'. If this is the case, after the player chooses their move, they will be directed to the results page where the winner will be revealed.

The construct of the program uses three classes:
- Game
- Player
- Computer

The Game class is used to determine which player has won and is agnostic to whether the second player is a Player or is the Computer. 

The player class has an instance of 'name' and has one single method which takes the user input as their move.

The computer class has only one method in which a move is selected randomly fromm the three options.

Challenges
---------

Using TDD in this process seemed slightly challenging as the computer move needed to be seeded to have reliable feature tests. 

I also have limited experience with HTML and CSS - this could have been utalised more to make my program more attractive.
