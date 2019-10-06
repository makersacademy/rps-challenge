# Rock, Paper, Scissors! web application
----
 _Rock, Paper, Scissors_
 -THE ONLINE GAME-

 User Stories:
```sh
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can enjoy myself
I would like to be able to play rock/paper/scissors
```

Features
- player can enter their own name before starting a game.
- player will be presented with a choice (rock, paper and scissors).
- player can choose one option
- Game will choose a random option
- a winner will be declared
----
DOMAIN MODEL

OBJECTS
- Player
- Computer_player
- Random_generator
- Game

MESSAGES
- enter_name
- pick_move (rock || paper || scissors)
- player_wins?

Sequence Diagram
- challenger enter you name:
- choose your move:
- player picked _____
- computer picked _____
- _____ wins!

Class Diagram
- Game : player1, player2(CPU), pick_move, player_wins?
- Player : name
- Random_generator : random_move (rock || paper || scissors)
