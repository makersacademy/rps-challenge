# Rock, Paper, Scissors app README
This project was completed as a weekend challenge for Week 3 of the Makers Academy coding bootcamp.

## Approach

To begin this challenge, I knew I would have to create an app which contained the following:
- A controller layer and a model layer (to separate concerns)
- A number of classes that would obey the single responsibility principle
- ERB files to relay information to the user in a web browser
- Both feature and unit tests to ensure everything is working properly

I began by creating my `app.rb` file in the root directory, defining the `Game` class and making it a sub-class of `Sinatra::Base` (using Sinatra's modular style). This allows all of Sinatra Base's methods to be available to the Game class.

From here I added in a root url for my game. This would allow a player to enter their name, so I wrote an `erb` file that contains an HTML form so the player can submit their name via a POST request. This then uses the POST/redirect/GET cycle to come to a page where the player can choose Rock, Paper or Scissors.

At this point my controller layer (the `Game` class contained in the `app.rb` file) was doing all the work, so I extracted the player's name to a `Player` class and allowed the use of sessions in the program, so that the player's name could be stored as a session variable and assigned to a class instance that way.

Now that I had my `Player` class, I needed to record the player's choice of move in the game. There were multiple ways I could have done this, but I decided the simplest way would be to use a form containing the three options as buttons, then depending on which the player clicked, pass the parameter to an instance variable in the controller layer.

At this point a player can input their name and choose a move, so I then needed to implement a virtual opponent for them to play against. I created an `Opponent` class and new it would have to have two methods:
- An `initialize` method that generated a list of possible moves
- A `choose` method where a move is chosen from the list

Now, the player can choose a move and their opponent can choose a move. All that is needed is a new class that will adjudicate the winner! I called this class (imaginatively enough) `Referee`. It initializes with the parameters of both the player and the opponent's chosen moves. It then has a method which decides who has one based on their choices. Finally, it has a method which announces the winner.

The game is now fully playable. Finally, I implemented a 'play again' loop that takes the player back to the play page if they want to play another game (remembering their name), or back to the root page if they don't.
