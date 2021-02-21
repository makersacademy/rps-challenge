
# Theory of Operation

note: the game was originally supposed to have an unlimited number of players, with a scoring system based off of "bigger army diplomacy" (i.e. rock only beats scissors if rock equals or outnumbers scissors). game.rb and players.rb were written with this in mind, but I decided to limit the game to two players when writing score.rb
## Classes

Game
--------------
@players (list of player instances)
--------------

tally_score

## Sequence Diagram

copy and paste into [playground.diagrams](https://playground.diagram.codes/d/sequence):

```

alias server="Server"
alias home="homepage"
alias game="Game"
alias player="Player"

server->home: "get /"
home->server: "returns /"
server->home: "user clicks 'New Game'"
home-->server: "redirects, asks for player names"
server->home: "returns player names, starts game"
home->game: "initializes with player names"
game->player: "creates Player instances for each player"
player->game: "returns self"
game=>home: "asks for player1 move"
home->server: "sends 'enter move player n' screen"
server->home: "enters move"
home->game: "passes move to game"
game->player: "passes move to player"
game=>home: "repeats above for each player"
game->game: "counts each move"
game->player: "calculates score for each player (nW/nL)"
game->home: "shows score, ranking table"



```