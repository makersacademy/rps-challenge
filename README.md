# Rock, Paper, Scissors
This is a game that let's you play a game of rock paper scissors against the game.

### How do I Use it?
Clone this repo. Run the ruby file `app.rb`, this will start your server. Then in your browser go to localhost:4567.

This game is suitable for either one or two players:

#### One Player
You will be asked for your name, and you will be playing against the computer. You will be able to pick the move that you would like to make; rock, paper or scissors.

You will then be redirected to a page that confirms both your and the computers moves, and let's you know you who won. Click try again to restart the game.

#### Two Players
You will be asked for the names of the two players. Once these has been entered you will be told who's turn it is and they will get to choose the move that they would like to make; rock, paper or scissors. Then it will be the next persons turn to do the same.

You will then be redirected to a page that confirms both moves and let's you know you who won. Click try again to restart the game.

### Running the tests
The tests for this program use rspec and capybara, so simply run rspec from within this directory.

### Known Issues
* Line 6 in `winner.rb` is too long. I plan to use a hash instead of an array and access the values of that the see player 2 move
* I am aware that perhaps my routes are a little confusing and could be made better by redirecting to a game page that would display different things depending on the params that it has
* I plan to change players from taking 2 players, to creating a single player. I would then be able to pass two instances of player (with their names and moves) to a Game class. This would hopefully eliminate the need for name1 and name2 as well as move1 and move2 which I feel restricts the code.

I would then hope that computer could inherit from, and therefore be treated as a player.
