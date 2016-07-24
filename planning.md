# Planning

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

- add an alternative option where you can choose a second player (maybe choose computer or human?)

_later_: Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

Classes:

Player - score (+= 1)
Game(player1, *player2 - passes through an instance for computer otherwise) - #turn,  


## feature tests:

fill in name
click play
computer explains rules
player chooses one option from rock, paper and scissors (stored in game?)
computer chooses from rock, paper and scissors randomnly
<logic of game> e.g:

- rock blunts scissors
- paper covers rock
- scissors cut paper

Winner declared: based on the winner, it says 'you win', or 'you lose'.. or 'computer wins'

params[:name]
Game.new(player1,player2) - player2 is optional, "AI" if not set



## unit tests:

player can enter their name (register)





