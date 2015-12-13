# Rock, Paper, Scissors

----------------------

## Single player game

- The player can enter their name on signing in
- The first round is round 1
- The player can choose from rock, paper or scissors
- The computer makes a random choice of rock, paper or scissors
- The winner is declared and receives 1 point, unless it is a draw
- The next round begins
- The first to 5 points is declared the champion!

----------------------

## The Model
- There are four Classes: Player, ComputerPlayer, Game and weapons
* Player has the attributes `name`, `choice` and `score`. `choice` is updated by three methods `rock`, `paper` and `scissors`, according to player choice during the game. `score` is updated upon winning a round.
* ComputerPlayer is similar to Player, but distinct enough to not inherit directly. `choice` is updated by one method, `rps`, which is dictated by a private random-number generator.
* Game takes three arguments on initialization; two Player classes and one Weapon class. It monitors the winner of the current round, and the round number. Game passes on player choices to the weapon class, and receives information on the round's outcome. Game instructs the winner to `add_score`, and then increases the `round_count` by 1.
* Weapons is responsible for the rules of the game. It contains a hash-map of winning: losing choices. Game asks Weapons to `compare` the two player choices. Weapons will see if Player 1's choice is equal to Player 2, and declare a draw if so. If not, it will check to see if Player 1's choice is a hash key with Player 2's choice as the value. If so, Player 1 is declared the winner. If not, Player 2 is declared the winner.

----------------------

## The View
- There are five Views: index, play, choice, outcome and game_over.
* index allows the player to register their name and begin a game. index POSTS entered game information to '/players'.
* play shows the current round number, the player scores and offers the player the choice of rock, paper or scissors. play POSTS player choice to '/rock', '/paper' or scissors.  
* choice shows a confirmation of the players choice.  
* outcome shows the computers choice, and declares the outcome. If a player has accrued 5 points, they are declared the champion. If not, outcome GETS play for the next round.

----------------------

## The Controller
- The controller has 9 routes - get '/index', post '/players', get '/play', post '/rock', post '/paper', post '/scissors', get '/choice', get '/outcome', and get '/game_over'.  
- get '/index' gets the splash page, for sign-in.
- post '/players' takes the player name and initializes a new game. It redirects to play.
- get '/play' gets the play page, showing player options and current game state.
- post '/rock', '/paper' and '/scissors' call the appropriate method on game to update player choice, and redirect to '/choice'.
- get '/choice' declares the computer choice and outcome.
- get '/game_over' is visited if a player has 5 points.
