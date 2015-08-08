```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

How to execute 2 player

assign each player an ID based on a ticker (done)
if you're player 1, your move is saved as global variable $player_1_move
if you're player 2, your move is saved as global variable $player_2_move
$war.decide_winner($player_1_move, $player_2_move)


if $player_1_move == nil || $player_2_move == nil
  MOVE PENDING, PLEASE REFRESH



reset p moves to nil

















## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard
done
